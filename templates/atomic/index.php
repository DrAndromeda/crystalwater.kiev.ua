<?php
/**
 * @package		Joomla.Site
 * @copyright	Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

/* The following line loads the MooTools JavaScript Library */
JHtml::_('behavior.framework', true);

/* The following line gets the application object for things like displaying the site name */
$app = JFactory::getApplication();
?>
<?php echo '<?'; ?>xml version="1.0" encoding="<?php echo $this->_charset ?>"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>" >
	<head>
		<jdoc:include type="head" />
		<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/template.css" type="text/css" />

		<script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/js/jquery-1.8.3.min.js"></script>

		<!-- The following line loads the template JavaScript file located in the template folder. It's blank by default. -->
		<!--<script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/js/template.js"></script> -->
	</head>
<body>
<div id="main">
	<div id="main_center">
		<div id="header">
			<div class="logo">
				<a id="logo" href="http://crystalwater.kiev.ua/">На главную</a>
			</div>
			<?php if($this->countModules('Contacts')) : ?>
				<div id="Contacts">
					<jdoc:include type="modules" name="Contacts" style="sidebar" />
				</div>
			<?php endif; ?>
		</div>
	
	<div id="clear_line"></div>
		<?php if($this->countModules('menu_site')) : ?>
						<div id="menu_site">
							<jdoc:include type="modules" name="menu_site" style="sidebar" />
						</div>
		<?php endif; ?>	
	<div id="clear_line"></div>
	<div id="news_and_articles">
		<?php if($this->countModules('news')) : ?>
						<div id="news">
							<jdoc:include type="modules" name="news" style="sidebar" />
						</div>
		<?php endif; ?>	
		<?php if($this->countModules('articles')) : ?>
						<div id="articles">
							<jdoc:include type="modules" name="articles" style="sidebar" />
						</div>
		<?php endif; ?>
	</div>
	<div id="clear_line"></div>
	<?php if($this->countModules('bottle1') || $this->countModules('bottle2') || $this->countModules('bottle3')) : ?>
		<div id="bottle_price">
			<?php if($this->countModules('bottle1')) : ?>
							<div id="bottle1">
								<jdoc:include type="modules" name="bottle1" style="sidebar" />
							</div>
			<?php endif; ?>	
			<?php if($this->countModules('bottle2')) : ?>
							<div id="bottle2">
								<jdoc:include type="modules" name="bottle2" style="sidebar" />
							</div>
			<?php endif; ?>
			<?php if($this->countModules('bottle3')) : ?>
							<div id="bottle3">
								<jdoc:include type="modules" name="bottle3" style="sidebar" />
							</div>
			<?php endif; ?>
		</div>
	<?php endif; ?>
	<div id="clear_line"></div>
		<div id="conteiner_content">
			
			<div id="content">
				<?php if($this->countModules('page_nav')) : ?>
					<div id="page_nav">
						<jdoc:include type="modules" name="page_nav" style="sidebar" />
					</div>
				<?php endif; ?>
				<?php if($this->countModules('pre_content')) : ?>
					<div id="pre_content">
						<jdoc:include type="modules" name="pre_content" style="sidebar" />
					</div>
				<?php endif; ?>
				<div id="clear_line"></div>		
				<div class="main_content">
					<jdoc:include type="message" />
					<jdoc:include type="component" />
				</div>
				<div id="clear_line"></div>		
				<?php if($this->countModules('post_content')) : ?>
					<div id="post_content">
						<jdoc:include type="modules" name="post_content" style="sidebar" />
					</div>
				<?php endif; ?>
				<div id="clear_line"></div>		
				<?php if($this->countModules('post_content_position_2')) : ?>
					<div id="post_content_position_2">
						<jdoc:include type="modules" name="post_content_position_2" style="sidebar" />
					</div>
				<?php endif; ?>
				<div id="clear_line"></div>		
				<?php if($this->countModules('post_content_position_3')) : ?>
					<div id="post_content_position_3">
						<jdoc:include type="modules" name="post_content_position_3" style="sidebar" />
						<div id="clear_line"></div>		
					</div>
				<?php endif; ?>
				
			</div>
			<div id="sidebar">
				<?php if($this->countModules('sidebar_position')) : ?>
					<div id="sidebar_position">
						<jdoc:include type="modules" name="sidebar_position" style="sidebar" />
					</div>
				<?php endif; ?>
				<?php if($this->countModules('sidebar_position1')) : ?>
					<div id="sidebar_position1">
						<jdoc:include type="modules" name="sidebar_position1" style="sidebar" />
					</div>
				<?php endif; ?>
				<?php if($this->countModules('sidebar_position2')) : ?>
					<div id="sidebar_position2">
						<jdoc:include type="modules" name="sidebar_position2" style="sidebar" />
					</div>
				<?php endif; ?>
			</div>
			<div id="clear_line"></div>
		</div>
	</div>
<div id="clear_line"></div>	
		<div id="footer">
			<div id="footer_center">
				<?php if($this->countModules('footer_menu')) : ?>
						<div id="footer_menu">
							<jdoc:include type="modules" name="footer_menu" style="sidebar" />
						</div>
				<?php endif; ?>
				<?php if($this->countModules('footer_position')) : ?>
					<div id="footer_position"><?php echo date('Y'); ?> <?php echo $app->getCfg('sitename'); ?>.
						<jdoc:include type="modules" name="footer_position" style="sidebar" />
					</div>
				<?php endif; ?>
			</div>
		</div>
</div>	
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-37068666-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
<!-- Yandex.Metrika counter -->
<script type="text/javascript">
(function (d, w, c) {
    (w[c] = w[c] || []).push(function() {
        try {
            w.yaCounter18859432 = new Ya.Metrika({id:18859432,
                    clickmap:true,
                    trackLinks:true,
                    accurateTrackBounce:true});
        } catch(e) { }
    });

    var n = d.getElementsByTagName("script")[0],
        s = d.createElement("script"),
        f = function () { n.parentNode.insertBefore(s, n); };
    s.type = "text/javascript";
    s.async = true;
    s.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//mc.yandex.ru/metrika/watch.js";

    if (w.opera == "[object Opera]") {
        d.addEventListener("DOMContentLoaded", f, false);
    } else { f(); }
})(document, window, "yandex_metrika_callbacks");
</script>
<noscript><div><img src="//mc.yandex.ru/watch/18859432" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->
</body>
</html>
