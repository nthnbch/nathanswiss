---
title: "{{ replace .TranslationBaseName "-" " " | title }}"
date: {{ dateFormat "Jan. 2, 2006" .Date }}
image: images/writer.jpeg
menu:
  main:
    name: "About"
---