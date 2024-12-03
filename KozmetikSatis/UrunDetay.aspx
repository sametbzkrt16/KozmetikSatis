<%@ Page Title="" Language="C#" MasterPageFile="~/kullanıcı.Master" AutoEventWireup="true" CodeBehind="UrunDetay.aspx.cs" Inherits="İlkayKozmetik.UrunDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .product-detail {
            width: 80%;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            background-color: #f9f9f9;
            text-align: center;
        }

        .product-detail img {
            max-width: 400px;
            height: 400px;
            border-radius: 8px;
        }

        .product-detail h2 {
            font-size: 24px;
            color: #333;
            margin-top: 20px;
        }

        .product-detail p {
            font-size: 16px;
            color: #555;
            margin: 10px 0;
        }

        .product-detail button {
            background-color: #f39c12;
            color: white;
            font-size: 18px;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .product-detail button:hover {
            background-color: #e67e22;
        }

        .message {
            background-color: #f39c12;
            color: white;
            text-align: center;
            padding: 10px;
            margin-top: 20px;
            display: none;
        }
    </style>
    <title>Ürün Detay</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="product-detail">
        <asp:Image ID="urunResim" runat="server" />
        <h2 id="urunAdi" runat="server"></h2>
        <p id="urunAciklama" runat="server"></p>
        <p id="urunFiyat" runat="server"></p>
        <p id="urunEklenmeTarihi" runat="server"></p>
        <!-- Sepete ekle butonunun default form submit işlevini engelle -->
        <button type="button" onclick="addToCart(event)">Sepete Ekle</button>
    </div>

    <!-- Mesaj için alan -->
    <div id="message" class="message">Ürününüzü satın almanız için sizi WhatsApp'a yönlendiriyoruz...</div>

<script>
    function addToCart(event) {
        // Sayfanın yenilenmesini engelle
        event.preventDefault();

        // Mesajı göster
        document.getElementById("message").style.display = "block";

        // 2 saniye sonra WhatsApp'a yönlendir
        setTimeout(function () {
            window.location.href = "https://wa.me/905516918307?text=Selam%20nbkozmetik%20web%20sitenizden%20geliyorum%20yard%C4%B1mc%C4%B1%20olur%20musunuz";
        }, 1000);  // 2 saniye bekle, ardından yönlendir
    }
</script>
</asp:Content>
