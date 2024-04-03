package jwp.model.dto;

import javax.servlet.http.HttpServletRequest;

public class UpdateUser {
  private String password;
  private String name;
  private String email;

  public UpdateUser(String password, String name, String email) {
    this.password = password;
    this.name = name;
    this.email = email;
  }

  public String getPassword() {
    return password;
  }

  public String getName() {
    return name;
  }

  public String getEmail() {
    return email;
  }

  public static UpdateUser from(HttpServletRequest request) {
    return new UpdateUser(
      request.getParameter("password"),
      request.getParameter("name"),
      request.getParameter("email")
    );
  }
}
