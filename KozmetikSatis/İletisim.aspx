<%@ Page Title="İletisim" Language="C#" MasterPageFile="~/kullanıcı.Master" AutoEventWireup="true" CodeBehind="İletisim.aspx.cs" Inherits="İlkayKozmetik.İletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Genel sayfa düzeni */
.contact-container {
    width: 100%;
    max-width: 1000px;
    margin: 50px auto;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    /* Menüyü Tam Kapsama */
.menu {
    width: 100%;
    display: flex;
    justify-content: center;
    background-color: transparent; /* Arka plan rengini kaldırdık */
    padding: 15px 0;
    margin-bottom: 20px;
}

}

/* Başlık stili */
.contact-title h2 {
    font-size: 36px;
    color: #333;
    text-align: center;
    margin-bottom: 30px;
}

/* İletişim metni stili */
.contact-text {
    font-size: 16px;
    color: #555;
    line-height: 1.6;
}

.contact-text h3 {
    font-size: 24px;
    color: #4CAF50;
    margin-top: 20px;
}

/* İletişim öğeleri (WhatsApp, E-posta, Instagram) */
.contact-item {
    margin-bottom: 15px;
    font-size: 18px;
}

.contact-item a {
    color: #4CAF50;
    text-decoration: none;
    font-weight: bold;
    padding-left: 10px;
}

.contact-item a:hover {
    color: #45a049;
}

.contact-item i {
    font-size: 24px;
    color: #4CAF50;
}

/* Yol Tarifi Butonu */
.btn-directions {
    background-color: #4CAF50;
    color: white;
    font-size: 18px;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

.btn-directions:hover {
    background-color: #45a049;
}

/* Menüyü Tam Kapsama */
.menu {
    width: 100%;
    display: flex;
    justify-content: center;
    background-color: #333;
    padding: 15px 0;
    margin-bottom: 20px;
}

.menu a {
    text-decoration: none;
    font-weight: bold;
    padding: 10px 20px;
    text-align: center;
    margin: 0 15px;
    background-color: #4CAF50;
    border-radius: 5px;
}



/* Sayfa düzenini şık yapmak için */
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
}

    </style>
    <title>İletişim</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contact-container">
        <div class="contact-title">
            <h2>İletişim</h2>
        </div>

        <!-- İletişim bilgilerini içerik olarak ekliyoruz -->
        <div class="contact-text">
            <h3>Bizimle İletişime Geçin</h3>
            <p>Bize WhatsApp, e-posta veya Instagram üzerinden ulaşabilirsiniz. Aşağıdaki iletişim bilgilerini kullanarak sorularınızı bize iletebilirsiniz.</p>

            <!-- WhatsApp Bağlantısı -->
            <div class="contact-item">
                <i class="fa fa-whatsapp"></i>
                <a href="https://wa.me/905516918307" target="_blank">WhatsApp ile iletişime geç</a>
            </div>

            <!-- E-posta Bağlantısı -->
            <div class="contact-item">
                <i class="fa fa-envelope"></i>
                <a href="mailto:info@kocnur2710.com">info@kocnur2710.com</a>
            </div>

            <!-- Instagram Bağlantısı -->
            <div class="contact-item">
                <i class="fa fa-instagram"></i>
                <a href="https://instagram.com/kozmetiknb" target="_blank">Instagram Hesabımız</a>
            </div>

            <!-- Konum / Yönlendirme -->
            
        </div>
    </div>
</asp:Content>
