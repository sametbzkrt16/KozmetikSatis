<%@ Page Title="Ürünler" Language="C#" MasterPageFile="~/kullanıcı.Master" AutoEventWireup="true" CodeBehind="Ürünler.aspx.cs" Inherits="İlkayKozmetik.Ürünler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title></title>
    <style>
        /* Sayfa genel ayarları */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        /* Ürünler bölümünün genel stili */
        .product-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            gap: 20px;
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        /* Tek bir ürün kutusu */
        .product-item {
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 8px;
            overflow: hidden;
            width: 300px;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .product-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
        }

        .product-item img {
            width: 100%;
            height: auto;
        }

        .product-info {
            padding: 15px;
            text-align: center;
        }

        .product-info h3 {
            font-size: 20px;
            margin: 10px 0;
            color: #333;
        }

        .product-info p {
            margin: 5px 0;
            color: #666;
        }

        .product-info .price {
            font-weight: bold;
            color: #4CAF50;
        }

        /* Hata mesajı stili */
        .error-message {
            text-align: center;
            color: red;
            margin-top: 20px;
        }

        /* Arama çubuğu stil */
        .search-container {
            text-align: center;
            margin: 20px 0;
        }

        .search-input {
            padding: 10px;
            width: 300px;
            font-size: 16px;
        }

        .search-button {
            padding: 10px 15px;
            font-size: 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }

        .search-button:hover {
            background-color: #45a049;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="text-align:center; margin-top: 30px;">Ürünler</h2>


    <div style="text-align: center; margin-top: 20px; margin-bottom: 50px;">
        <input type="text" id="searchInput" placeholder="Aradığın Ürün NB Kozmetik'de" 
               style="font-size: 20px; padding: 10px; width: 284px;" 
               onkeyup="filterProducts()" class="auto-style34" />
    </div>

   <script>
       function filterProducts() {
           const input = document.getElementById('searchInput');
           const filter = input.value.toLowerCase();
           const productItems = document.querySelectorAll('.product-item');

           productItems.forEach(item => {
               const productName = item.querySelector('h3').textContent.toLowerCase();
               if (productName.includes(filter)) {
                   item.style.display = "";
               } else {
                   item.style.display = "none";
               }
           });
       }
   </script>


    <!-- Ürünlerin listeleneceği Repeater -->
    <div class="product-container">
        <asp:Repeater ID="rptÜrünler" runat="server" OnItemCommand="rptÜrünler_ItemCommand">
        <ItemTemplate>
            <div class="product-item">
                <a href="UrunDetay.aspx?urunId=<%# Eval("urun_id") %>">
                    <img src='<%# Eval("urun_resim") %>' alt='<%# Eval("urun_adi") %>' />
                </a>
                <div class="product-info">
                    <h3><%# Eval("urun_adi") %></h3>
                    <p><%# Eval("urun_aciklama") %></p>
                    <p class="price">Fiyat: <%# Eval("urun_fiyat", "{0:C}") %></p>
                    <p>Kategori: <%# Eval("urun_kategori") %></p>
                </div>
            </div>
        </ItemTemplate>
        </asp:Repeater>
    </div>

    <!-- Hata mesajları için Label -->
    <asp:Label ID="lblError" runat="server" CssClass="error-message" />
</asp:Content>
