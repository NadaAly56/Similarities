<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sim.aspx.cs" Inherits="Sim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>متشابهات القرآن</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
    <link rel="stylesheet" href="assets/css/Main2.css" />
  <%-- tap --%>
    <!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />

		
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <!-- Sidebar -->
			<section id="sidebar">
				<div class="inner" >
					<nav>
                        <img  src="images/Simlogo.png" width="170" height="100"  style="margin-top:10px"/>
						<ul>
							<li><a href="home.aspx">الرئيسية</a></li>
							<li><a href="#one">طريقة التصفح</a></li>
							<li><a href="#two">التصفح</a></li>
							<li><a href="#three">بحث</a></li>
						</ul>
					</nav>
				</div>
			</section>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Intro -->
                <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>

                    
					<section id="one" class="wrapper style1 fullscreen fade-up" style="color:black">
						<div class="inner" >
                            
                            <img  src="images/DarLogo.png" width="200" height="100" />
                            
                                <h1 class="myh1" > طريقة التصفح</h1>
                            
 
							<!-- PAGE CONTENT BEGINS -->
                            
                            <div style=" width: 1100px; height: 600px; top: 200px; right:100px; left: 50px; " dir="rtl" >
                                <div class="row">
									<div class="col-sm-11">
										<div class="tabbable" style="color:black">
											<ul class="nav nav-tabs" id="myTab">
												<li class="active">
													<a data-toggle="tab" href="#home"style="color:black ;font-family:'A Massir Ballpoint';font-size:25px">
														
														حسب السور
													</a>
												</li>

												<li>
													<a data-toggle="tab" href="#messages"style="color:black ;font-family:'A Massir Ballpoint';font-size:25px">
														حسب الأجزاء
														
													</a>
												</li>

												
											</ul>

											<div class="tab-content">
												<div id="home" class="tab-pane fade in active">
                                                    <h2  class="h2">اختر سورة أو عدة سور</h2>
                                                    <br />
                                                    <div style="overflow-y:scroll; height:400px; ruby-align:right ;text-align:right">
                                                    <asp:CheckBoxList ID="CheckBoxListSurahs" runat="server" CssClass="checkbox-inline" CellPadding="5" RepeatDirection="Horizontal" CellSpacing="5" RepeatColumns="7" Font-Size="20px" >
                                                        <asp:ListItem Value="1">الفاتحة</asp:ListItem>
                                                        <asp:ListItem Value="2">البقرة</asp:ListItem>
                                                        <asp:ListItem Value="3">آل عمران</asp:ListItem>
                                                        <asp:ListItem Value="4">النساء</asp:ListItem>
                                                        <asp:ListItem Value="5">المائدة</asp:ListItem>
                                                        <asp:ListItem Value="6">الأنعام</asp:ListItem>
                                                        <asp:ListItem Value="7">الأعراف</asp:ListItem>
                                                        <asp:ListItem Value="8">الأنفال</asp:ListItem>
                                                        <asp:ListItem Value="9">التوبة</asp:ListItem>
                                                        <asp:ListItem Value="10">يونس</asp:ListItem>
                                                        <asp:ListItem Value="11">هود</asp:ListItem>
                                                        <asp:ListItem Value="12">يوسف</asp:ListItem>
                                                        <asp:ListItem Value="13">الرعد</asp:ListItem>
                                                         <asp:ListItem Value="14">إبراهيم</asp:ListItem>
                                                         <asp:ListItem Value="15">الحجر</asp:ListItem>
                                                         <asp:ListItem Value="16">النحل</asp:ListItem>
                                                         <asp:ListItem Value="17">الإسراء</asp:ListItem>
                                                         <asp:ListItem Value="18">الكهف</asp:ListItem>
                                                         <asp:ListItem Value="19">مريم</asp:ListItem>
                                                         <asp:ListItem Value="20">طه</asp:ListItem>
                                                         <asp:ListItem Value="21">الأنبياء</asp:ListItem>
                                                         <asp:ListItem Value="22">الحج</asp:ListItem>
                                                         <asp:ListItem Value="23">المؤمنون</asp:ListItem>
                                                         <asp:ListItem Value="24">النور</asp:ListItem>
                                                         <asp:ListItem Value="25">الفرقان</asp:ListItem>
                                                         <asp:ListItem Value="26">الشعراء</asp:ListItem>
                                                         <asp:ListItem Value="27">النمل</asp:ListItem>
                                                         <asp:ListItem Value="28">القصص</asp:ListItem>
                                                         <asp:ListItem Value="29">العنكبوت</asp:ListItem>
                                                         <asp:ListItem Value="30">الروم</asp:ListItem>
                                                         <asp:ListItem Value="31">لقمان</asp:ListItem>
                                                         <asp:ListItem Value="32">السجدة</asp:ListItem>
                                                         <asp:ListItem Value="33">الأحزاب</asp:ListItem>
                                                         <asp:ListItem Value="34">سبأ</asp:ListItem>
                                                         <asp:ListItem Value="35">فاطر</asp:ListItem>
                                                         <asp:ListItem Value="36">يس</asp:ListItem>
                                                         <asp:ListItem Value="37">الصافات</asp:ListItem>
                                                         <asp:ListItem Value="38">ص</asp:ListItem>
                                                         <asp:ListItem Value="39">الزمر</asp:ListItem>
                                                        <asp:ListItem Value="40">غافر</asp:ListItem>
                                                        <asp:ListItem Value="41">فصلت</asp:ListItem>
                                                         <asp:ListItem Value="42">الشورى</asp:ListItem>
                                                         <asp:ListItem Value="43">الزخرف</asp:ListItem>
                                                         <asp:ListItem Value="44">الدخان</asp:ListItem>
                                                         <asp:ListItem Value="45">الجاثية</asp:ListItem>
                                                         <asp:ListItem Value="46">الأحقاف</asp:ListItem>
                                                         <asp:ListItem Value="47">محمد</asp:ListItem>
                                                         <asp:ListItem Value="48">الفتح</asp:ListItem>
                                                         <asp:ListItem Value="49">الحجرات</asp:ListItem>
                                                         <asp:ListItem Value="50">ق</asp:ListItem>
                                                         <asp:ListItem Value="51">الذاريات</asp:ListItem>
                                                         <asp:ListItem Value="52">الطور</asp:ListItem>
                                                         <asp:ListItem Value="53">النجم</asp:ListItem>
                                                         <asp:ListItem Value="54">القمر</asp:ListItem>
                                                         <asp:ListItem Value="55">الرحمن</asp:ListItem>
                                                         <asp:ListItem Value="56">الواقعة</asp:ListItem>
                                                         <asp:ListItem Value="57">الحديد</asp:ListItem>
                                                         <asp:ListItem Value="58">المجادلة</asp:ListItem>
                                                         <asp:ListItem Value="59">الحشر</asp:ListItem>
                                                         <asp:ListItem Value="60">الممتحنة</asp:ListItem>
                                                         <asp:ListItem Value="61">الصف</asp:ListItem>
                                                         <asp:ListItem Value="62">الجمعة</asp:ListItem>
                                                         <asp:ListItem Value="63">المنافقون</asp:ListItem>
                                                         <asp:ListItem Value="64">التغابن</asp:ListItem>
                                                         <asp:ListItem Value="65">الطلاق</asp:ListItem>
                                                         <asp:ListItem Value="66">التحريم</asp:ListItem>
                                                         <asp:ListItem Value="67">الملك</asp:ListItem>
                                                         <asp:ListItem Value="68">القلم</asp:ListItem>
                                                         <asp:ListItem Value="69">الحاقة</asp:ListItem>
                                                         <asp:ListItem Value="70">المعارج</asp:ListItem>
                                                         <asp:ListItem Value="71">نوح</asp:ListItem>
                                                        <asp:ListItem Value="72">الجن</asp:ListItem>
                                                        <asp:ListItem Value="73">المزمل</asp:ListItem>
                                                        <asp:ListItem Value="74">المدثر</asp:ListItem>
                                                        <asp:ListItem Value="75">القيامة</asp:ListItem>
                                                        <asp:ListItem Value="76">الإنسان</asp:ListItem>
                                                        <asp:ListItem Value="77">المرسلات</asp:ListItem>
                                                        <asp:ListItem Value="78">النبأ</asp:ListItem>
                                                        <asp:ListItem Value="79">النازعات</asp:ListItem>
                                                        <asp:ListItem Value="80">عبس</asp:ListItem>
                                                        <asp:ListItem Value="81">التكوير</asp:ListItem>
                                                        <asp:ListItem Value="82">الإنفطار</asp:ListItem>
                                                        <asp:ListItem Value="83">المطففين</asp:ListItem>
                                                        <asp:ListItem Value="84">الإنشقاق</asp:ListItem>
                                                         <asp:ListItem Value="85">البروج</asp:ListItem>
                                                        <asp:ListItem Value="86">الطارق</asp:ListItem>
                                                        <asp:ListItem Value="87">الأعلى</asp:ListItem>
                                                        <asp:ListItem Value="88">الغاشية</asp:ListItem>
                                                        <asp:ListItem Value="89">الفجر</asp:ListItem>
                                                        <asp:ListItem Value="90">البلد</asp:ListItem>
                                                        <asp:ListItem Value="91">الشمس</asp:ListItem>
                                                        <asp:ListItem Value="92">الليل</asp:ListItem>
                                                        <asp:ListItem Value="93">الضحى</asp:ListItem>
                                                        <asp:ListItem Value="94">الشرح</asp:ListItem>
                                                        <asp:ListItem Value="95">التين</asp:ListItem>
                                                        <asp:ListItem Value="96">العلق</asp:ListItem>
                                                        <asp:ListItem Value="97">القدر</asp:ListItem>
                                                        <asp:ListItem Value="98">البينة</asp:ListItem>
                                                        <asp:ListItem Value="99">الزلزلة</asp:ListItem>
                                                        <asp:ListItem Value="100">العاديات</asp:ListItem>
                                                        <asp:ListItem Value="101">القارعة</asp:ListItem>
                                                        <asp:ListItem Value="102">التكاثر</asp:ListItem>
                                                        <asp:ListItem Value="103">الهمزة</asp:ListItem>
                                                        <asp:ListItem Value="104">الهمزة</asp:ListItem>
                                                        <asp:ListItem Value="105">الفيل</asp:ListItem>
                                                        <asp:ListItem Value="106">قريش</asp:ListItem>
                                                        <asp:ListItem Value="107">الماعون</asp:ListItem>
                                                        <asp:ListItem Value="108">الكوثر</asp:ListItem>
                                                        <asp:ListItem Value="109">الكافرون</asp:ListItem>
                                                        <asp:ListItem Value="110">النصر</asp:ListItem>
                                                        <asp:ListItem Value="111">المسد</asp:ListItem>
                                                        <asp:ListItem Value="112">الإخلاص</asp:ListItem>
                                                        <asp:ListItem Value="113">الفلق</asp:ListItem>
                                                        <asp:ListItem Value="114">الناس</asp:ListItem>
                                                         
                                                    </asp:CheckBoxList></div>
                                                    <br />
                                                    
                                                    
                                                    <asp:Button ID="ButtonNavSurah" runat="server" Font-Size="25px" Text="تصفح السور مع نفسها" OnClick="ButtonNavSurah_Click" CssClass="button" />
                                                    <asp:Button ID="ButtonNavQuranSurah" runat="server" Font-Size="25px" Text="تصفح السور مع القرآن" OnClick="ButtonNavQuranSurah_Click" CssClass="button" />
                                                       
												</div>

												<div id="messages" class="tab-pane fade">
													<h2 class="h2">اختر جزء أو عدة أجزاء</h2>
                                                    <br />
                                                    <asp:CheckBoxList ID="CheckBoxListParts" runat="server" CssClass="checkbox" CellPadding="5" RepeatDirection="Horizontal" CellSpacing="5" RepeatColumns="5" Font-Size="20px">
                                                        <asp:ListItem Value="1"> الأول</asp:ListItem>
                                                        <asp:ListItem Value="2">الثاني</asp:ListItem>
                                                        <asp:ListItem Value="3">الثالث</asp:ListItem>
                                                        <asp:ListItem Value="4">الرابع</asp:ListItem>
                                                        <asp:ListItem Value="5">الخامس</asp:ListItem>
                                                        <asp:ListItem Value="6">السادس</asp:ListItem>
                                                        <asp:ListItem Value="7">السابع</asp:ListItem>
                                                        <asp:ListItem Value="8">الثامن</asp:ListItem>
                                                        <asp:ListItem Value="9">التاسع</asp:ListItem>
                                                        <asp:ListItem Value="10">العاشر</asp:ListItem>
                                                        <asp:ListItem Value="11">الحادي عشر</asp:ListItem>
                                                        <asp:ListItem Value="12">الثاني عشر</asp:ListItem>
                                                        <asp:ListItem Value="13">الثالث عشر</asp:ListItem>
                                                        <asp:ListItem Value="14">الرابع عشر</asp:ListItem>
                                                        <asp:ListItem Value="15">الخامس عشر</asp:ListItem>
                                                        <asp:ListItem Value="16">السادس عشر</asp:ListItem>
                                                        <asp:ListItem Value="17">السابع عشر</asp:ListItem>
                                                        <asp:ListItem Value="18">الثامن عشر</asp:ListItem>
                                                        <asp:ListItem Value="19">التاسع عشر</asp:ListItem>
                                                        <asp:ListItem Value="20">العشرون</asp:ListItem>
                                                        <asp:ListItem Value="21">الواحد والعشرون</asp:ListItem>
                                                        <asp:ListItem Value="22">الثاني والعشرون</asp:ListItem>
                                                        <asp:ListItem Value="23">الثالث والعشرون</asp:ListItem>
                                                        <asp:ListItem Value="24">الرابع والعشرون</asp:ListItem>
                                                        <asp:ListItem Value="25">الخامس والعشرون</asp:ListItem>
                                                        <asp:ListItem Value="26">السادس والعشرون</asp:ListItem>
                                                        <asp:ListItem Value="27">السابع والعشرون</asp:ListItem>
                                                        <asp:ListItem Value="28">الثامن والعشرون</asp:ListItem>
                                                        <asp:ListItem Value="29">التاسع والعشرون</asp:ListItem>
                                                        <asp:ListItem Value="30">الثلاثون</asp:ListItem>
                                                    </asp:CheckBoxList>
                                                    <br />
                                                    <br />
                                                    
                                                    <asp:Button ID="ButtonNavPart" runat="server" Font-Size="25px" Text="تصفح الأجزاء مع نفسها" OnClick="ButtonNavPart_Click" CssClass="button" />
                                                    <asp:Button ID="ButtonNavQuranPart" runat="server" Font-Size="25px" Text="تصفح الأجزاء مع القرآن" OnClick="ButtonNavQuranPart_Click" CssClass="button" />
                                                       
												</div>
											</div>
										</div>
									</div><!-- /.col -->
								</div><!-- /.row -->
							
                            </div>
								
						</div>
					</section>

				<!-- One -->
					
				<!-- Two -->
                <asp:MultiView ID="MultiViewPage" runat="server">
                    <asp:View ID="View1" runat="server">
                        <section id="two" class="wrapper style3 spotlights" dir="rtl">
						<div class="inner">
                            <h1 class="myh1" style="margin-left:-300px">تصفح المتشابهات</h1>
                        </div>
                        <section>
                            <%--start titles--%>
                            <div class="inner">

                             	<div dir="rtl" style=" padding: 10px; font-family: Rekaa; font-size: 25px; font-style: normal; text-align: right; word-spacing: normal; width: 300px; height:1000px; margin-top: 10px; margin-right: 30px; overflow: scroll;">
                                   
                                       <asp:MultiView ID="MultiViewTitles" runat="server">
                                         <asp:View ID="ViewTitlesSura" runat="server">
                                             <asp:SqlDataSource ID="SqlDataSourceTitleSura" runat="server" ConnectionString="<%$ ConnectionStrings:SimConnectionString %>" OnSelecting="SqlDataSourceTitleSura_Selecting">
                                     </asp:SqlDataSource>
                                     <asp:DataList ID="DataListTitleSura" runat="server" DataKeyField="TitleID" DataSourceID="SqlDataSourceTitleSura" OnSelectedIndexChanged="DataListTitleSura_SelectedIndexChanged">
                                         <ItemTemplate>
                                              
                                            
                                       <asp:LinkButton  ID="LinkButton2" CommandName="select" runat="server" ForeColor="#7a181f" OnClick="LinkButton1_Click"><%# Eval("TitleText") %></asp:LinkButton>
                                             
                                             <br />
                                             
                                         </ItemTemplate>
                                     </asp:DataList>
                                         </asp:View>
                                        
                                           
                                            <asp:View ID="ViewTitlesPart" runat="server">
                                                <asp:SqlDataSource ID="SqlDataSourceTitlePart" runat="server" ConnectionString="<%$ ConnectionStrings:SimConnectionString %>"></asp:SqlDataSource>
                                                <asp:DataList ID="DataListTitlePart" runat="server" DataKeyField="TitleID" DataSourceID="SqlDataSourceTitlePart" OnSelectedIndexChanged="DataListTitlePart_SelectedIndexChanged">
                                                    <ItemTemplate>
                                             
                                       <asp:LinkButton  ID="LinkButton2" CommandName="select" runat="server" ForeColor="#7a181f" OnClick="LinkButton2_Click"><%# Eval("TitleText") %></asp:LinkButton>
                                             
                                             <br />
                                             
                                         </ItemTemplate>
                                                </asp:DataList>                                            </asp:View>
                                     </asp:MultiView>
                                     
                             	</div>
                           </div>
                            <%--end titles--%>
                            <%--strat seg--%>
                             <div class="content">
								<div class="inner">
                                   <%--start sura seg nav--%>
                                    <%--one Sura nav--%>
                                    <asp:SqlDataSource ID="SqlDataSourceTitlesSuraAyat" runat="server" ConnectionString="<%$ ConnectionStrings:SimConnectionString %>">
                                    </asp:SqlDataSource>
                                    <div class="BoxNav"> 
                                        <asp:MultiView ID="MultiViewSuraNav" runat="server">
                                            <asp:View ID="ViewSuraNav" runat="server">
                                                <asp:DataList ID="DataListTitlesSuraAyat" runat="server" DataKeyField="TitleID" DataSourceID="SqlDataSourceTitlesSuraAyat">
                                         
                                             <ItemTemplate>
                                                  
                                 <div class="TitleNav">
                                               <p>
                                                            <%# Eval("TitleText") %> /  <%# Eval("SurahName") %> / اللآية <%# Eval("AN") %>
														</p>
                                     <hr class="hr1" />
                                      <div>
                                      <p class="pre">
                                                            <%# Eval("Pre") %>
														</p>
														<p class="seg">
                                                            <%# Eval("SegmentText") %>

														</p>
                                                        <p class="post">
                                                            <%# Eval("Post") %>
                                                        </p></div>
                                               </div>
<br />
                                            </ItemTemplate>
                                        </asp:DataList>
                                            </asp:View>
                                            <%--end one sura nav--%>
                                            <%--sura with quran nav--%>
                                            <asp:View ID="ViewSuraQuranNav" runat="server">
                                                <asp:SqlDataSource ID="SqlDataSourceSuraQuranNav" runat="server" ConnectionString="<%$ ConnectionStrings:SimConnectionString %>" SelectCommand="SELECT DISTINCT SimSegments.SegmentText, SimSegments.Post, SimSegments.Pre, Titles.TitleText, Titles.TitleID, Suras.SurahName, Suras.SN, Ayat.AN FROM SimSegments INNER JOIN TitlesSegments ON SimSegments.SegID = TitlesSegments.SegID INNER JOIN Titles ON TitlesSegments.TitleID = Titles.TitleID INNER JOIN Ayat ON SimSegments.AyaCode = Ayat.AyaCode INNER JOIN Suras ON Ayat.SN = Suras.SN WHERE (Titles.TitleID = @Title) ORDER BY Suras.SN">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="DataListTitleSura" Name="Title" PropertyName="SelectedValue" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                                <asp:DataList ID="DataListSuraQuranNav" runat="server" DataSourceID="SqlDataSourceSuraQuranNav">
                                                    <ItemTemplate>
                                                  
                                 <div class="TitleNav">
                                                <p>
                                                            <%# Eval("TitleText") %>  /  <%# Eval("SurahName") %> / الآية <%# Eval("AN") %>
														</p>
                                     
                                     <hr class="hr1" />
                                      <div>
                                      <p class="pre">
                                                            <%# Eval("Pre") %>
														</p>
														<p class="seg">
                                                            <%# Eval("SegmentText") %>

														</p>
                                                        <p class="post">
                                                            <%# Eval("Post") %>
                                                        </p></div>
                                               </div>
<br />
                                            </ItemTemplate>
                                                </asp:DataList>
                                            </asp:View>
                                            <%--end sura with quran nav--%>
                                            <%--end sura seg nav--%>
                                            <%--star part seg nav--%>
                                            <%--one part nav--%>
                                            <asp:View ID="ViewPartNav" runat="server">
                                                <asp:SqlDataSource ID="SqlDataSourcePartNav" runat="server" ConnectionString="<%$ ConnectionStrings:SimConnectionString %>"></asp:SqlDataSource>
                                                <asp:DataList ID="DataListPartNav" runat="server"  DataSourceID="SqlDataSourcePartNav" >
                                                    <ItemTemplate>
                                                  
                                 <div class="TitleNav"">
                                                <p>
                                                            <%# Eval("TitleText") %> /  <%# Eval("SurahName") %> / الآية <%# Eval("AN") %>
														</p>
                                     <hr class="hr1" />
                                      <div>
                                      <p class="pre">
                                                            <%# Eval("Pre") %>
														</p>
														<p class="seg">
                                                            <%# Eval("SegmentText") %>

														</p>
                                                        <p class="post">
                                                            <%# Eval("Post") %>
                                                        </p> </div>
                                               </div>
<br />
                                            </ItemTemplate>
                                                </asp:DataList>
                                            </asp:View>
                                            <%--end one part nav--%>
                                            <%--part with quran  nav--%>
                                            <asp:View ID="ViewPartQuranNav" runat="server">
                                                <asp:SqlDataSource ID="SqlDataSourcePartQuranNav" runat="server" ConnectionString="<%$ ConnectionStrings:SimConnectionString %>" SelectCommand="SELECT Suras.SurahName, SimSegments.Pre, SimSegments.SegmentText, SimSegments.Post, Titles.TitleID, Titles.TitleText, Suras.SN ,Ayat.AN FROM Ayat INNER JOIN Suras ON Ayat.SN = Suras.SN INNER JOIN Quarters ON Ayat.QuartID = Quarters.QuartID INNER JOIN SimSegments ON Ayat.AyaCode = SimSegments.AyaCode INNER JOIN TitlesSegments ON SimSegments.SegID = TitlesSegments.SegID INNER JOIN Titles ON TitlesSegments.TitleID = Titles.TitleID WHERE (Titles.TitleID = @Title) ORDER BY Suras.SN" OnDeleted="SqlDataSourcePartQuranNav_Deleted">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="DataListTitlePart" Name="Title" PropertyName="SelectedValue" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                                <asp:DataList ID="DataListPartQuranNav" runat="server"  DataSourceID="SqlDataSourcePartQuranNav">
                                                    <ItemTemplate>
                                                  
                                 <div class="TitleNav">
                                               <p>
                                                            <%# Eval("TitleText") %> /  <%# Eval("SurahName") %> / الآية <%# Eval("AN") %>
														</p>
                                     <hr class="hr1" />
                                     <div>
                                      <p class="pre">
                                                            <%# Eval("Pre") %>
														</p>
														<p class="seg">
                                                            <%# Eval("SegmentText") %>

														</p>
                                                        <p class="post">
                                                            <%# Eval("Post") %>
                                                        </p>
                                         </div>
                                               </div>
<br />
                                            </ItemTemplate>
                                                </asp:DataList>
                                            </asp:View>
                                            <%--end part with quran nav--%>
                                            <%--end part seg nav--%>
                                        </asp:MultiView>
                                        
                                    </div>
								</div>
							</div>
                            <%--end seg--%>
					</section></section>
                    </asp:View>
                </asp:MultiView>
					</ContentTemplate>
                </asp:UpdatePanel>
						
				
				<!-- Three -->
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <fieldset>
                          
                            <section id="three" class="wrapper style2 spotlights" dir="rtl" style="border: 5px solid #FFFFFF; border-radius:10px;" >
                    <section>
                        
                         <h1 class="myh1" style="margin-right:50%;">بحث</h1>
                    </section>
                    
                    <section style="margin-top:-200px">
                        <div class="col-lg-6" style="margin-right:-300px; margin-top:0px">
                        <asp:TextBox ID="TextBox1" runat="server" ForeColor="Black" Font-Size="40" Width="600" Height="70px"></asp:TextBox></div>
                             <div class="col-md-offset-2" style="margin-right:0%; margin-top:0px">
                    <asp:Button ID="ButtonSearchTitle" runat="server" Text="بحث بالعناوين" CssClass="button" OnClick="ButtonSearchTitle_Click"/></div>
                                 <div class="col-lg-2" style="margin-right:-350px; margin-top:0px">
                    <asp:Button ID="ButtonSearchAya" runat="server" Text="بحث بالآيات" CssClass="button" OnClick="ButtonSearchAya_Click" /></div>
                        
                    </section>
                    
                    
						
						
                           
                    <%--search with ayat--%>
                    
                    <asp:MultiView ID="MultiViewSearch" runat="server">
                        <%--start search aya--%>
                        <asp:View ID="ViewSerchAya" runat="server">
                            <section style="margin-top:-100px">
                        <div dir="rtl" style="font-size: large; color: #FFFFFF; line-height: 50px; overflow-y:scroll; text-align: right; vertical-align: middle; letter-spacing: 0em; padding: 5px; margin: 5px; width: 1000px; height: 1500px; margin-top: -100px; margin-right: 150px">
                            <asp:SqlDataSource ID="SqlDataSourceSearchAya" runat="server" ConnectionString="<%$ ConnectionStrings:SimConnectionString %>" SelectCommand="SELECT SimSegments.Pre, SimSegments.Post, SimSegments.SegmentText, Titles.TitleText, Suras.SurahName, Ayat.AN FROM SimSegments INNER JOIN TitlesSegments ON SimSegments.SegID = TitlesSegments.SegID INNER JOIN Titles ON TitlesSegments.TitleID = Titles.TitleID INNER JOIN Ayat ON SimSegments.AyaCode = Ayat.AyaCode INNER JOIN Suras ON Ayat.SN = Suras.SN WHERE (SimSegments.Seg LIKE '%' + @Seg + '%')">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox1" Name="Seg" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:DataList ID="DataListSearchAya" runat="server" DataSourceID="SqlDataSourceSearchAya">
                            <ItemTemplate>
                                                  
                                 
                             <div class="TitleNav">
                                               <p>
                                                            <%# Eval("TitleText") %> /  <%# Eval("SurahName") %> / الآية <%# Eval("AN") %>
														</p>
                                     <hr class="hr1" />
                                     <div>
                                      <p class="pre">
                                                            <%# Eval("Pre") %>
														</p>
														<p class="seg">
                                                            <%# Eval("SegmentText") %>

														</p>
                                                        <p class="post">
                                                            <%# Eval("Post") %>
                                                        </p>
                                         </div>
                                               </div>
                                            </ItemTemplate>
                        </asp:DataList>
                        </div>
                        </section>
                        </asp:View>
                        <%--end search aya--%>
                        <asp:View ID="viewSearchTitles" runat="server">
                            <section style="margin-top:-60px">
                            <%--start titles--%>
                            <div class="inner">

                             	<div dir="rtl" style=" padding: 10px; font-family: Rekaa; font-size: 25px; font-style: normal; text-align: right; word-spacing: normal; width: 300px; height:1000px; margin-top: 10px; margin-right: 30px; color:#000000; overflow: scroll;">
                                   
                                     <asp:SqlDataSource ID="SqlDataSourceSearchTitles" runat="server" ConnectionString="<%$ ConnectionStrings:SimConnectionString %>" SelectCommand="SELECT TitleText, TitleID FROM Titles WHERE (TitleText LIKE '%' + @title + '%')">
                                         <SelectParameters>
                                             <asp:ControlParameter ControlID="TextBox1" Name="Title" PropertyName="Text" />
                                         </SelectParameters>
                                     </asp:SqlDataSource>
                                     <asp:DataList ID="DataListSearchTitles" runat="server" DataSourceID="SqlDataSourceSearchTitles" DataKeyField="TitleID">
                                         <ItemTemplate>
                                             <asp:LinkButton ID="LinkButton3" CommandName="select" ForeColor="#7a181f" runat="server"><%# Eval("TitleText") %></asp:LinkButton>
                                         </ItemTemplate>
                                     </asp:DataList>
                                     </div></div>
                                     <%--end titles--%>
                            <%--strat seg--%>
                             <div class="content">
								<div class="inner">
                                    <div style=" width: 805px;  height:1000px; overflow-y:scroll; margin-top: 2px; padding: 10px; font-family: Rekaa; color:#ffffff; font-size: 25px;"> 
                                        <asp:SqlDataSource ID="SqlDataSourceSearchTitleNav" runat="server" ConnectionString="<%$ ConnectionStrings:SimConnectionString %>" SelectCommand="SELECT SimSegments.Pre, SimSegments.SegmentText, SimSegments.Post, Titles.TitleID, Titles.TitleText, Ayat.AN, Suras.SurahName FROM SimSegments INNER JOIN TitlesSegments ON SimSegments.SegID = TitlesSegments.SegID INNER JOIN Titles ON TitlesSegments.TitleID = Titles.TitleID INNER JOIN Ayat ON SimSegments.AyaCode = Ayat.AyaCode INNER JOIN Suras ON Ayat.SN = Suras.SN WHERE (Titles.TitleID = @Title)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="DataListSearchTitles" Name="Title" PropertyName="SelectedValue" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <asp:DataList ID="DataListSearchTitleNav" runat="server" DataSourceID="SqlDataSourceSearchTitleNav">
                                            <ItemTemplate>
                                                  
                                 <div style=" width: 750px;  height:250px; margin-top: 2px; border-radius:5px; padding: 5px; font-family: Rekaa; font-size: 25px;">
                                      <p style="text-align:right; color:#7a181f">
                                                            <%# Eval("TitleText") %> /  <%# Eval("SurahName") %>
														</p>
                                     <hr class="hr1" />
                                      <p class="pre">
                                                            <%# Eval("Pre") %>
														</p>
														<p class="seg">
                                                            <%# Eval("SegmentText") %>

														</p>
                                                        <p class="post">
                                                            <%# Eval("Post") %>
                                                        </p>
                                               </div>
<br />
                                            </ItemTemplate>
                                        </asp:DataList>
                                    </div>
								</div>
							</div>
                            <%--end seg--%>
					</section>
                        </asp:View>
                    </asp:MultiView>
                        
                   
                   
                           
                </section>
                        </fieldset>
                    </ContentTemplate>
                </asp:UpdatePanel>
                
                                           
								<footer id="footer" class="wrapper style1-alt">

				<div class="inner">
					<ul class="menu" style="font-size:large; color:#ffffff; text-align:center" >
						<li>&copy; جميع الحقوق محفوظة</li><li>تصميم&nbsp;  <a href="www.nourquran.com">دار روضة نور القرآن</a></li>
					</ul>
				</div>
			</footer>
				
                </div>

	
                        
        <!-- Scripts tab panel -->
        <script src="assets/js/jquery-2.1.4.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>

        </div>
    </form>
</body>
</html>
