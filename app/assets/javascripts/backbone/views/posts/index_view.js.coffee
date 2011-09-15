RubyBackboneBlog.Views.Posts ||= {}

class RubyBackboneBlog.Views.Posts.IndexView extends Backbone.View
  template: JST["backbone/templates/posts/index"]
    
  initialize: () ->
    _.bindAll(this, 'addOne', 'addAll', 'render');
    
    @options.posts.bind('reset', this.addAll);
   
  addAll: () ->
    @options.posts.each(this.addOne)
  
  addOne: (post) ->
    view = new RubyBackboneBlog.Views.Posts.PostView({model : post})
    this.$("tbody").append(view.render().el)
       
  render: ->
    $(this.el).html(this.template(posts: this.options.posts.toJSON() ))
    @addAll()
    
    return this