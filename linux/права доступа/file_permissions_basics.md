`chown` – изменить владельца файла / директории 
`chgrp` – изменить группу файла / директории 
`сhmod` – изменить права доступа на файл / директорию 
`chmod ugo+x myfile.txt` добавить X всем 
`сhmod g-rw myfile.txt` убрать RW у группы 
`chmod o=rw myfile.txt`установить RW всем остальным 
```
u = user 
g = group 
o = other 
a = ugo
``` 
`chmod 777 myfile.txt` установить RWX всем 
`chmod 741 myfile.txt` установить: RWX владельцу, R - - группе, - - X всем остальным 
```
r = 4 
w = 2 
x = 1 
```
chmod 1777 myDir включить StickyBit 
chmod 0777 myDir выключить StickyBit

StickyBit - при включенном: файлы может удалять только сам владелец

directory bit - означает что это директория а не файл