class RubyBackboneBlog.Models.Post extends Backbone.Model
  paramRoot: 'post'

  defaults:
    title: null
    content: null
  
class RubyBackboneBlog.Collections.PostsCollection extends Backbone.Collection
  model: RubyBackboneBlog.Models.Post
  url: '/posts'