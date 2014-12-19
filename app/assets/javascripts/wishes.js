jQuery(function() {
  if ($('.pagination').length) {
    $(window).scroll(function() {
      var url;
      url = $('.pagination .next_page').attr('href');
      if (url && $(window).scrollTop() > $(document).height() - $(window).height() - 50) {
      	alert ("time to load them wishes");
        $('.pagination').text("Loading more wishes...");
        //return $.getScript(url);
        //return $.ajax url: url, format: 'js'
        return $.ajax url: url, format: 'js'
    //     $.ajax({
		  //   url: url,
		  //   format: 'js',
		  //   dataType: 'script',
		  //   type: 'GET',
		  //   success: function(data) { return data; }
		  // });
      }
    });
    return $(window).scroll();
  }
});