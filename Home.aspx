<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>متشابهات القرآن</title>
   
		
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />



	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            color: #3399FF;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
     
   <section id="home" class="" lang='ar'  dir="rtl">
       
        <section>
							
							<div class="content">
								<div class="inner">
									<div class="actions" dir="rtl" lang='ar' style="margin-right:37%; margin-top:32%" >
                                        

                                        <asp:Button style="margin-right:10%" ID="Button1"  runat="server" Text="ابدأ" lang='ar' CssClass="button" PostBackUrl="~/Sim.aspx"  />
                                        
                                        <hr class="hr"/>
                                       
                                     <a class="buttonPop" href="#popup1">فريق العمل</a>
                                          <div id="popup1" class="overlay" style="height:800px">
	<div class="popup" style="height:650px; width:1000px; overflow-y:scroll; background-color:#ffffff" dir="rtl">
		<h2>فريق العمل</h2>
		<a class="close" href="#">&times;</a>
		<div class="content">
			<div id="fh5co-portfolio-section">
			<div class="container">
				<ul id="filters" class="clearfix animate-box">
					<li><span class="filter active" data-filter=".all">الكل</span></li>
					<li><span class="filter" data-filter=".card">مدير المشروع</span></li>
					<li><span class="filter" data-filter=".icon">الأشراف</span></li>
					<li><span class="filter" data-filter=".logo">تصميم الموقع</span></li>
					<li><span class="filter" data-filter=".web">إدخال البيانات</span></li>
				</ul>

				<div id="portfoliolist" class="animate-box">
					
					<div class="portfolio all card" data-cat="card" dir="rtl">
						<div class="portfolio-wrapper">						
							<img src="images/E.jpg" alt=""  width="300"  height="300"/>
							<div class="label">
								<div class="label-text">
									<a class="text-title">عيسى صبري المتولى</a>
									<span class="text-category">30 عام</span>
								</div>
								<div class="label-bg"></div>
							</div>
						</div>
					</div>		

					
					<div class="portfolio all icon" data-cat="icon">
						<div class="portfolio-wrapper">				
							<img src="images/H.jpg" alt=""  width="300"  height="300"/>
							<div class="label">
								<div class="label-text">
									<a class="text-title">هدير أمين أحمد</a>
									<span class="text-category">21 عام</span>
								</div>
								<div class="label-bg"></div>
							</div>
						</div>
					</div>				
							
					
					
								<div class="portfolio all logo web" data-cat="logo">
						<div class="portfolio-wrapper">			
							<img src="images/N.jpg" alt=""  width="300"  height="300"/>
							<div class="label">
								<div class="label-text">
									<a class="text-title">ندا أحمد علي</a>
									<span class="text-category">20 عام</span>
								</div>
								<div class="label-bg"></div>
							</div>
						</div>
					</div>
                    <hr  style="color:black; height:5px; "/>	
					<div class="portfolio all web" data-cat="web">
						<div class="portfolio-wrapper">
							<img src="images/Es.jpg" alt=""  width="300"  height="300"/>
							<div class="label">
								<div class="label-text">
									<a class="text-title">إسراء رضا إبراهيم</a>
									<span class="text-category">20 عام</span>
								</div>
								<div class="label-bg"></div>
							</div>
						</div>
					</div>			
					
					<div class="portfolio all web" data-cat="web">
						<div class="portfolio-wrapper">			
							<img src="images/A.jpg" alt="" width="300"  height="300" />
							<div class="label">
								<div class="label-text">
									<a class="text-title">أحمد مجدي إبراهيم</a>
									<span class="text-category">18 عام</span>
								</div>
								<div class="label-bg"></div>
							</div>
						</div>
					</div>	
					
					<div class="portfolio all web" data-cat="web">
						<div class="portfolio-wrapper">			
							<img src="images/y.jpg" alt="" width="300"  height="300" />
							<div class="label">
								<div class="label-text">
									<a class="text-title">يحيى أشرف عفيفي</a>
									<span class="text-category">17 عام</span>
								</div>
								<div class="label-bg"></div>
							</div>
						</div>
					</div>	
					
					<div class="portfolio all web" data-cat="web">
						<div class="portfolio-wrapper">			
							<img src="images/S.jpg" alt="" width="300"  height="300" />
							<div class="label">
								<div class="label-text">
									<a class="text-title">سهيلة فتحي</a>
									<span class="text-category">19 عام</span>
								</div>
								<div class="label-bg"></div>
							</div>
						</div>
					</div>

																														
				</div>
			</div>
		</div>
		</div>
	</div>
</div>
                                        <a class="buttonPop" href="#popup2">تواصل</a>
                                          <div id="popup2" class="overlay">
	<div class="popup" style="height:650px; width:1000px" dir="rtl">
		<h2>تواصل</h2>
		<a class="close" href="#">&times;</a>
		<div class="content">
						<div class="inner">
							
							<p>لإبداء الآراء والمقترحات أرسل لنا رسالة</p>
							<div class="split style1">
								<section>
									<form method="post" action="#">
										<div class="field half first">
											<label for="name">الاسم</label>
											<input type="text" name="name" id="name" />
										</div>
										<div class="field  half first" >
											<label for="email" style="margin-right:-20px">البريد الإلكتروني</label>
											<input type="text" name="email" id="email" style="margin-right:-20px" />
										</div>
										<div class="field">
											<label for="message">الرسالة</label>
											<textarea name="message" id="message" rows="5" style="width:500px"></textarea>
										</div>
										<ul class="actions">
											<li>
                                                <asp:Button CssClass="button"  href="#" ID="Button3" runat="server" font-size="25px" Text="إرسال الرسالة" />
                                               </li> 
										</ul>
                                        
									</form>
								</section>
								<section>
									<ul class="contact" >
										<li>
											<img src="images/Tel.jpg" width="370" height="500" style="margin-right:-50px"/>
										</li>
										
										
									</ul>
								</section>
							</div>
						</div>
					</div>
	</div>
</div>
                                        <a class="buttonPop" href="#popup3">عنا</a>
                                          <div id="popup3" class="overlay">
	<div class="popup"  style="height:650px; width:1000px; overflow-y:scroll;" dir="rtl">
		<h2>عنا</h2>
		<a class="close" href="#">&times;</a>
		<div class="content">
			<div class="inner">
							
							
							<div class="split style1">
								<section>
									<form method="post" action="#">
                                       
                                                <div class="field">
											<img src="images/logo.png" width="300" height="200" alt="" />
										</div>
                                        <br />
                                           
                                                <div class="field">
											<img src="images/app.jpg"  width="300" height="200" alt="" />
										</div>
                                            
                                                <div class="field">
											<img src="images/logo.png"   width="300" height="200"alt="" />
										</div>
                                            
                                        
									</form>
								</section>
								<section>
									<ul class="contact" style="margin-right:-200px">
										<li>
                                            <h3>عن دار روضة نور القرآن</h3>
											<p>
  دار رضوة نور القران هي احدى دور القران التابعة لقطاع المعاهد الازهرية والمشهرة برقم 962 لشهر يناير لعام 2014 هدف الدار هو نشر تعلم وتعليم القرآن الكريم لجميع المسلمين، كبارا وصغارا، رجالا ونساء، بمنج سهل وميسر متبعة فيه هدي النبوة وعملا بقول الله تعالى: ولقد يسرنا القرآن للذكر فهل من مدكر</p>
										</li>
										<li>
											<h3> عن معمل دار روضة نور القرآن</h3>
                                                <p>
                                                    هو معمل مجهز بأجهزة كمبيوتر ذات جودة عالية،ويوجد هذا المعمل بفرع الدار بالمهندسين،وقد أقيم خصيصاً لإنتاج التطبيقات القرآنية التي يعتبر هذا التطبيق أحدها، ويقوم بالعمل في هذا المعمل شباب الدار والمشرفين عليها وهم يبذلون جهدهم في السعي لخدمة الإسلام والمسلمين حيث تعد فكرة المعمل هذا فريدة من نوعها. وأيضاً يتم في هذا المعمل تدريب شباب الدار على كيفية تطويع التكنولوجيا الحديثة وأجهزة الكمبيوتر في خدمة الإسلام والمسلمين. 
                                                </p>
											
										</li>

										<li>
											<h3>عن تطبيق متشابهات القرآن</h3>
                                            <p>
                                                عتبر تطبيق شجرة القرآن أو متصفح القرآن الكريم أول تطبيق يتم إصداره من معمل دار روضة نور القرآن لإنتاج التطبيقات القرآنية، يهدف هذا التطبيق لخدمة المسلمين وكذلك غير المسلمين من العرب وغيرهم في تصفح آيات القرآن الكريم بكل سهولة ويسر،وكذلك الوصول للآيات المطلوبة. وهو أيضاً يساعد جميع الأشخاص في جميع المجالات فهو يقوم بتقديم كل الآيات التي تخص الموضوع الذي تم اختياره من قبل المستخدم،ويمكن أيضاً أن تبحث من خلال آية معينة فتظهر لك المواضيع التي تخصها،وهو أيضاً مترجم للغات غير العربية وبذلك سيستفيد منه العرب وغير العرب.
                                            </p>
										</li>
										
									</ul>
								</section>
							</div>
						</div>
		</div>
	</div>
</div>
                            </div>
								</div>
							</div>
                           
						</section>
   </section>
       
        
	
	<script src="assets/js/jjquery.min.js"></script>
	<script src="assets/js/jquery.waypoints.min.js"></script>
	<script type="text/javascript" src="assets/js/jquery.mixitup.min.js"></script>

	
	<script type="text/javascript">
	    $(function () {

	        var filterList = {

	            init: function () {

	                // MixItUp plugin
	                // http://mixitup.io
	                $('#portfoliolist').mixItUp({
	                    selectors: {
	                        target: '.portfolio',
	                        filter: '.filter'
	                    },
	                    load: {
	                        filter: '.all'
	                    }
	                });

	            }

	        };

	        // Run the show!
	        filterList.init();



	    });
	</script>               
    </div>
      
       

		
    </form>
  
</body>
</html>
