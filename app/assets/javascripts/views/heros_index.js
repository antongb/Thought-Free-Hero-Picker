window.ThoughtFreePix.Views.HerosIndex = Backbone.View.extend({
  template: JST['heros/index'],

  // initialize: function (options) {
  //   this.collection = options.collection;
  // },
  events: {
    "click button#refresh": "refresh",
    "click button#abathur": "abathur",
    "click a": "test"
  },

  initialize: function (option) {
      this.listenTo(this.collection, "sync add", this.render);
  },

  refresh: function () {
    var view = this;

    this.collection.fetch({
      //view is already in body, no need to append again
      success: function () { view.render(); }
    });
  },

  abathur: function () {
    alert("PJ PARTY");
  },

  test: function () {
    console.log("working");
  },

  render: function () {
    var renderedContent = this.template({
      heros: this.collection
    });

    this.$el.html(renderedContent);

    return this;
  }
});
