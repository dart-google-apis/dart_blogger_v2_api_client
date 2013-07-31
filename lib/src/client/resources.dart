part of blogger_v2_api;

class BlogsResource_ {

  final Client _client;

  BlogsResource_(Client client) :
      _client = client;

  /**
   * Gets one blog by id.
   *
   * [blogId] - The ID of the blog to get.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Blog> get(core.String blogId, {core.Map optParams}) {
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Blog.fromJson(data));
  }
}

class CommentsResource_ {

  final Client _client;

  CommentsResource_(Client client) :
      _client = client;

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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Comment.fromJson(data));
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new CommentList.fromJson(data));
  }
}

class PagesResource_ {

  final Client _client;

  PagesResource_(Client client) :
      _client = client;

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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Page.fromJson(data));
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new PageList.fromJson(data));
  }
}

class PostsResource_ {

  final Client _client;

  PostsResource_(Client client) :
      _client = client;

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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Post.fromJson(data));
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new PostList.fromJson(data));
  }
}

class UsersResource_ {

  final Client _client;

  final UsersBlogsResource_ blogs;

  UsersResource_(Client client) :
      _client = client,
      blogs = new UsersBlogsResource_(client);

  /**
   * Gets one user by id.
   *
   * [userId] - The ID of the user to get.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<User> get(core.String userId, {core.Map optParams}) {
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new User.fromJson(data));
  }
}

class UsersBlogsResource_ {

  final Client _client;

  UsersBlogsResource_(Client client) :
      _client = client;

  /**
   * Retrieves a list of blogs, possibly filtered.
   *
   * [userId] - ID of the user whose blogs are to be fetched. Either the word 'self' (sans quote marks) or the user's profile identifier.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<BlogList> list(core.String userId, {core.Map optParams}) {
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new BlogList.fromJson(data));
  }
}

