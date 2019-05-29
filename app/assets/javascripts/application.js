// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require popper
//= require bootstrap
//= require_tree .

$(function () {
  var replaced = $("body").html().replace(/(@([a-zA-Z0-9]+))/, '<a href="/timeline/$2" data-user="$2" class="user-popover">$1</a>');
  $("body").html(replaced);

  $('a.user-popover').popover({
    "html": true,
    "trigger": "hover",
    "content": function() {
      var div_id =  `tmp-id-${$.now()}`;
      return details_in_popup($(this).attr('data-user'), div_id);
    }
  });

  function details_in_popup(link, div_id){
    $.ajax({
      url: `/user/${link}`,
      success: function(response) {
        content = `Status Count: ${response.statuses_count}<br />Follower Count: ${response.followers_count}`;
        $(`#${div_id}`).html(content);
      }
    });
    return '<div id="' + div_id + '">Loading...</div>';
  }
});
