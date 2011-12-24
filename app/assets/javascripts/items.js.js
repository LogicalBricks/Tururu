(function() {
  var load_tokeninput;

  load_tokeninput = function() {
    return $("#item_tags_tokens").tokenInput([], {
      crossDomain: false,
      noSearch: true,
      prePopulate: $("#item_tags_tokens").data('prepopulate'),
      preventDuplicates: true,
      theme: 'facebook',
      searchDelay: 100,
      tokenLimit: 10
    });
  };

  $(function() {
    return load_tokeninput();
  });

}).call(this);
