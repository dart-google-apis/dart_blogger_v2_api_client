part of blogger_v2_api_client;

class BlogsResource_ extends Resource {

  BlogsResource_(Client client) : super(client) {
  }

  /**
   * Gets one blog by id.
   *
   * [blogId] - The ID of the blog to get.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Blog> get(core.String blogId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "blogs/{blogId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Blog.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class CommentsResource_ extends Resource {

  CommentsResource_(Client client) : super(client) {
  }

  /**
   * Gets one comment by id.
   *
   * [blogId] - ID of the blog to containing the comment.
   *
   * [postId] - ID of the post to fetch posts from.
   *
   * [commentId] - The ID of the comment to get.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Comment> get(core.String blogId, core.String postId, core.String commentId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "blogs/{blogId}/posts/{postId}/comments/{commentId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (commentId == null) paramErrors.add("commentId is required");
    if (commentId != null) urlParams["commentId"] = commentId;
    if (postId == null) paramErrors.add("postId is required");
    if (postId != null) urlParams["postId"] = postId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Comment.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves the comments for a blog, possibly filtered.
   *
   * [blogId] - ID of the blog to fetch comments from.
   *
   * [postId] - ID of the post to fetch posts from.
   *
   * [fetchBodies] - Whether the body content of the comments is included.
   *
   * [maxResults] - Maximum number of comments to include in the result.
   *
   * [pageToken] - Continuation token if request is paged.
   *
   * [startDate] - Earliest date of comment to fetch, a date-time with RFC 3339 formatting.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CommentList> list(core.String blogId, core.String postId, {core.bool fetchBodies, core.int maxResults, core.String pageToken, core.String startDate, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "blogs/{blogId}/posts/{postId}/comments";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (fetchBodies != null) queryParams["fetchBodies"] = fetchBodies;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (postId == null) paramErrors.add("postId is required");
    if (postId != null) urlParams["postId"] = postId;
    if (startDate != null) queryParams["startDate"] = startDate;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CommentList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class PagesResource_ extends Resource {

  PagesResource_(Client client) : super(client) {
  }

  /**
   * Gets one blog page by id.
   *
   * [blogId] - ID of the blog containing the page.
   *
   * [pageId] - The ID of the page to get.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Page> get(core.String blogId, core.String pageId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "blogs/{blogId}/pages/{pageId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (pageId == null) paramErrors.add("pageId is required");
    if (pageId != null) urlParams["pageId"] = pageId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Page.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves pages for a blog, possibly filtered.
   *
   * [blogId] - ID of the blog to fetch pages from.
   *
   * [fetchBodies] - Whether to retrieve the Page bodies.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PageList> list(core.String blogId, {core.bool fetchBodies, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "blogs/{blogId}/pages";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (fetchBodies != null) queryParams["fetchBodies"] = fetchBodies;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new PageList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class PostsResource_ extends Resource {

  PostsResource_(Client client) : super(client) {
  }

  /**
   * Get a post by id.
   *
   * [blogId] - ID of the blog to fetch the post from.
   *
   * [postId] - The ID of the post
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Post> get(core.String blogId, core.String postId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "blogs/{blogId}/posts/{postId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (postId == null) paramErrors.add("postId is required");
    if (postId != null) urlParams["postId"] = postId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Post.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves a list of posts, possibly filtered.
   *
   * [blogId] - ID of the blog to fetch posts from.
   *
   * [fetchBodies] - Whether the body content of posts is included.
   *
   * [maxResults] - Maximum number of posts to fetch.
   *
   * [pageToken] - Continuation token if the request is paged.
   *
   * [startDate] - Earliest post date to fetch, a date-time with RFC 3339 formatting.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PostList> list(core.String blogId, {core.bool fetchBodies, core.int maxResults, core.String pageToken, core.String startDate, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "blogs/{blogId}/posts";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (blogId == null) paramErrors.add("blogId is required");
    if (blogId != null) urlParams["blogId"] = blogId;
    if (fetchBodies != null) queryParams["fetchBodies"] = fetchBodies;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (startDate != null) queryParams["startDate"] = startDate;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new PostList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class UsersResource_ extends Resource {

  UsersBlogsResource_ _blogs;
  UsersBlogsResource_ get blogs => _blogs;

  UsersResource_(Client client) : super(client) {
  _blogs = new UsersBlogsResource_(client);
  }

  /**
   * Gets one user by id.
   *
   * [userId] - The ID of the user to get.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<User> get(core.String userId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "users/{userId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (userId == null) paramErrors.add("userId is required");
    if (userId != null) urlParams["userId"] = userId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new User.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class UsersBlogsResource_ extends Resource {

  UsersBlogsResource_(Client client) : super(client) {
  }

  /**
   * Retrieves a list of blogs, possibly filtered.
   *
   * [userId] - ID of the user whose blogs are to be fetched. Either the word 'self' (sans quote marks) or the user's profile identifier.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<BlogList> list(core.String userId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "users/{userId}/blogs";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (userId == null) paramErrors.add("userId is required");
    if (userId != null) urlParams["userId"] = userId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new BlogList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

