<!--footer-->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-4 footer-grid-agileits-w3ls text-left">
					<h3>Chúng tôi</h3>
					<p><?php getshortdescription("titles"); ?></p>
					<div class="read">
						<a href="about.php" class="btn btn-primary read-m">Xem chi tiết</a>
					</div>
				</div>
				<div class="col-lg-4 footer-grid-agileits-w3ls text-left">

					<div class="tech-btm">
						<h3>Bài viết phổ biến</h3>
						<?php getpopularposts("page_hits"); ?>
					</div>
				</div>
				<!-- subscribe -->
				<div class="col-lg-4 subscribe-main footer-grid-agileits-w3ls text-left">
					<h2>Đăng kí nhận tin mới nhất</h2>
					<div class="subscribe-main text-left">
							<div class="subscribe-form">
									<form action="#" method="post" class="subscribe_form">
										<input class="form-control" type="email" placeholder="Enter your email..." required="">
										<button type="submit" class="btn btn-primary submit">Submit</button>
									</form>
									<div class="clearfix"> </div>
						   </div>
						<p>Chúng tôi tôn trọng quyền riêng tư của bạn</p>
					</div>
					<!-- //subscribe -->
				</div>
			</div>
			<!-- footer -->
				<div class="w3layouts-agile-copyrightbottom">
					<p> Trang tin tức <?php $current=date("Y"); print_r($current);?> | Một sản phẩm của nhóm
						<a href="https://www.facebook.com/profile.php?id=100036958234383">HTL</a>
					</p>

				</div>
			</div>
			<!-- //footer -->
		</div>
	</footer>