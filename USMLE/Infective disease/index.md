---
title: Table of Contents
author: Harvey Guo
created: <% tp.file.creation_date() %>
modified: <% tp.file.last_modified_date() %>
aliases: <% tp.file.title %>
share: true
---
```dataview
list
WHERE contains(file.folder, this.file.folder) AND file.name != "index"
```
