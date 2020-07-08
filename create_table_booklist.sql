CREATE TABLE booklist.books (
  id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  book_title VARCHAR(100),
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

<ul>
  <% @records.each do |record| %>
    <li><%= record['book_title'] %></li>
  <% end %>
</ul>
