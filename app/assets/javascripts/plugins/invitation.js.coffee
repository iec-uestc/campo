$(document).on 'page:update', ->
  $('.share-icon').mouseover ->
    $box = $(this).parent().children ':first';
    box_left = $(this).position().left - $box.outerWidth()/2 + 10;
    box_top = $(this).position().top - $box.outerHeight() - 10;

    html = $box.html()
    unless html.includes('canvas')
      code = $box.parent().text();
      url = "#{invitation_url}"+"/#{code.replace(/(^\s*)/g,"")}";
      $box.qrcode {width: 125, height: 125, text: "#{url}"};

    $box.css('top', "#{box_top}px");
    $box.css('left', "#{box_left}px");
    $box.css('display', 'block');

    if $(window).scrollTop()>$box.offset().top
      box_top = $(this).position().top + 25;
      $box.css('top', "#{box_top}px");


  $('.share-icon').mouseout ->
    $(this).parent().children(':first').css('display', 'none');

  $('.invitation_area > .invitation_row').click ->
    code = $(this).text();
    url = "#{invitation_url}"+"/#{code.replace(/(^\s*)/g,"")}";

    window.open url;
