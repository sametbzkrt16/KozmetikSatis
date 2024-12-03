<%@ Page Title="Hakkımızda" Language="C#" MasterPageFile="~/kullanıcı.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="İlkayKozmetik.Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Hakkımızda Sayfası Konteyneri */
.about-container {
    width: 80%;
    max-width: 1000px;
    margin: 50px auto;
    padding: 30px;
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}

/* Başlık */
.about-title h2 {
    font-size: 36px;
    color: #333;
    text-align: center;
    margin-bottom: 30px;
}

/* İçerik yazı kısmı */
.about-text {
    font-size: 16px;
    color: #555;
    line-height: 1.6;
}

.about-text h3 {
    font-size: 24px;
    color: #4CAF50;
    margin-top: 20px;
}

.about-text p {
    margin-bottom: 20px;
}

.about-text ul {
    list-style-type: disc;
    margin-left: 20px;
}

/* Sayfa düzenini şık yapmak için */
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
}

    </style>
    <title>Hakkımızda</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="about-container">
        <div class="about-title">
            <h2>Hakkımızda</h2>
        </div>

        <!-- Buraya direkt yazı girilecek kısmı -->
        <div class="about-text">
            <h3>Şirketimizin Başlığı</h3>
            <p>Biz NB Kozmetik olarak kaliteli ve güvenilir kozmetik ürünleriyle müşterilerimize hizmet vermekteyiz. Yılların deneyimiyle sektördeki en iyi ürünleri sunmaya devam ediyoruz.</p>
            
            <h3>Vizyonumuz</h3>
            <p>Hedefimiz, kozmetik sektöründe lider konuma gelmek ve tüm dünyada tanınan bir marka olmaktır. Kaliteyi her zaman ön planda tutuyor ve müşteri memnuniyetini en üst seviyede sağlamayı amaçlıyoruz.</p>

            <h3>Değerlerimiz</h3>
            <ul>
                <li>Kalite</li>
                <li>Güven</li>
                <li>İnovasyon</li>
                <li>Sürekli Gelişim</li>
            </ul>

            <h3>Tarihçe</h3>
            <p>2021 yılında kurulan NB Kozmetik, kozmetik sektöründe kısa sürede kendine sağlam bir yer edinmiştir.</p>
        </div>
    </div>
</asp:Content>
