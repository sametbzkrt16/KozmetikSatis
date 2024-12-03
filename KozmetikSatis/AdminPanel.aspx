<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="İlkayKozmetik.AdminPanel" MasterPageFile="~/kullanıcı.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Genel Admin Paneli Düzeni */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        /* Başlık ve içerik */
        h2 {
            color: #333;
            text-align: center;
            font-size: 32px;
            margin-top: 50px;
        }

        /* Box'lar (Hakkımızda Güncelleme ve Ürün Yönetimi) */
        .box {
            background-color: #fff;
            padding: 20px;
            margin: 20px 0;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        /* Ürün Ekleme Formu */
        input[type="text"], textarea, .fileupload {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            border-radius: 4px;
            border: 1px solid #ddd;
            box-sizing: border-box;
        }

        textarea {
            resize: vertical;
        }

        /* Butonlar */
        .btnUpdate {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 12px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            margin-top: 10px;
            transition: background-color 0.3s;
        }

        .btnUpdate:hover {
            background-color: #45a049;
        }

        .btnDelete {
            background-color: #f44336;
            color: white;
            border: none;
            padding: 12px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            margin-top: 10px;
            transition: background-color 0.3s;
        }

        .btnDelete:hover {
            background-color: #d32f2f;
        }

        /* Ürün Kartları */
        .product-card {
            background-color: #fff;
            padding: 15px;
            margin: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 220px;
            margin-right: 20px;
            margin-bottom: 20px;
            transition: transform 0.3s;
        }

        .product-card img {
            width: 100%;
            height: auto;
            border-radius: 8px;
        }

        .product-card h3 {
            color: #333;
            font-size: 20px;
            margin: 15px 0;
        }

        .product-card p {
            color: #555;
            font-size: 16px;
            margin: 5px 0;
        }

        .product-card:hover {
            transform: translateY(-5px);
        }

        /* Hata ve Başarı Mesajları */
        label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
        }

        label[style="color:green"] {
            color: #4CAF50;
        }

        label[style="color:red"] {
            color: #f44336;
        }

        /* Ürün Listeleme Alanı */
        .product-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: flex-start;
            gap: 20px;
        }

        @media (max-width: 768px) {
            .product-card {
                width: 100%;
                margin-right: 0;
            }

            input[type="text"], textarea, .fileupload {
                width: 100%;
            }

            .search-input {
                width: 100%;
            }
        }

        /* Arama Kutusu */
        .search-input {
            width: 300px;
            padding: 10px;
            margin: 20px 0;
            border-radius: 4px;
            border: 1px solid #ddd;
            box-sizing: border-box;
        }
    </style>
    <title>Admin Paneli - Hakkımızda Güncelle ve Ürün Yönetimi</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Admin Paneli -&nbsp; Ürün Yönetimi</h2>

    <!-- Hakkımızda Güncelleme -->
    <div class="box">
        <asp:Label ID="lblMessage" runat="server" ForeColor="Green" Visible="false" />
        <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false" />
    </div>

    <!-- Ürün Yönetimi -->
    <div class="box">
        <h3>Yeni Ürün Ekle</h3>

        <!-- Ürün Ekleme Formu -->
        <asp:TextBox ID="txtUrunAdi" runat="server" placeholder="Ürün Adı" />
        <asp:TextBox ID="txtUrunAciklama" runat="server" TextMode="MultiLine" placeholder="Ürün Açıklaması" Height="100px" />
        <asp:TextBox ID="txtUrunFiyat" runat="server" placeholder="Ürün Fiyatı" />
        <asp:TextBox ID="txtUrunKategori" runat="server" placeholder="Ürün Kategorisi" />
        <asp:FileUpload ID="fuUrunResim" runat="server" />

        <asp:Button ID="btnEkle" runat="server" Text="Ürün Ekle" OnClick="btnEkle_Click" CssClass="btnUpdate" />

        <!-- Başarı ve Hata Mesajları -->
        <asp:Label ID="Label1" runat="server" ForeColor="Green" Visible="false" />
        <asp:Label ID="Label2" runat="server" ForeColor="Red" Visible="false" />
    </div>

    <!-- Arama Kutusu -->
    <div class="box">
        <h3>Ürün Ara</h3>
        <input type="text" id="searchInput" placeholder="Ürün adı ile ara..." class="search-input" onkeyup="filterProducts()" />
    </div>

    <h3>Ürün Listesi</h3>
    
    <!-- Ürünlerin listeleneceği Repeater -->
    <div class="product-list">
        <asp:Repeater ID="rptÜrünler" runat="server">
            <ItemTemplate>
                <div class="product-card">
                    <img src='<%# Eval("urun_resim") %>' alt='<%# Eval("urun_adi") %>' />
                    <h3><%# Eval("urun_adi") %></h3>
                    <p><%# Eval("urun_aciklama") %></p>
                    <p>Fiyat: <%# Eval("urun_fiyat", "{0:C}") %></p>
                    <p>Kategori: <%# Eval("urun_kategori") %></p>

                    <!-- Güncelleme ve Silme Butonları -->
                    <asp:Button ID="btnSil" runat="server" Text="Sil" OnClick="btnSil_Click" CommandArgument='<%# Eval("urun_id") %>' CssClass="btnDelete" />
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

    <script>
        function filterProducts() {
            var input = document.getElementById('searchInput');
            var filter = input.value.toLowerCase();
            var productItems = document.querySelectorAll('.product-card');

            productItems.forEach(function (item) {
                var productName = item.querySelector('h3').textContent.toLowerCase();
                if (productName.includes(filter)) {
                    item.style.display = '';
                } else {
                    item.style.display = 'none';
                }
            });
        }
    </script>

</asp:Content>
