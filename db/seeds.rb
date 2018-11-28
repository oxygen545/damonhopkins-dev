AdminUser.create!([
  {email: "damon@hopkins-family.org", password: "password", password_confirmation: "password"}
])  
User.create!([
  {username: "Damon Hopkins", email: "damon@hopkins-family.org", password: "password", password_confirmation: "password"}
])
Photo.create!([
  {page_name: "cover", caption: "Empty Pic", sequence: 1},
])
Style.create!([
  {stylename: "Default Reds", description: "DarkRed Coral and Tomato", primary_font: "Roboto", secondary_font: "Lobster Two", alt_font: "Times New Roman", primary_color: "#ff1616", secondary_color: "#ae0000", alt_color: "#ffd2c5"},
  {stylename: "Default Blues", description: "Basic Style Blue and Cyan", primary_font: "Lobster Two", secondary_font: "Lobster Two", alt_font: "Lobster Two", primary_color: "#65d8ff", secondary_color: "#0a03ad", alt_color: "#959cb7"},
  {stylename: "Default Greens", description: "Basic Greens", primary_font: "Lobster Two", secondary_font: "Lobster Two", alt_font: "Lobster Two", primary_color: "#c1ffc1", secondary_color: "#cacdca", alt_color: "#31ff37"}
])
Item.create!([
  {title: "Cover Page Project", heading: "Working with ActiveStorage", body: "Lots to do.. to get active storage to work with having things hosted in the cloud vs on the local file system.\r\nDuring deployment I learned all kinds of good things dealing with putting the configuration into environment variables. All new things but seem like valid concepts. Lots to manage in the ENV though.\r\nBack in the day you set your environment and you were done. Not so these days.\r\n<a href=\"/\" class=\"btn btn-sm btn-secondary\">Visit</a>", style_id: 1, user_id: 1, photo_id: 1},
])
