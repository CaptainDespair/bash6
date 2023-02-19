# bash6
Скрипту даем право на выполнение командой 
>chmod +x script.sh

Cкрипт с применением средств SHELL и AWK, который выполняет сначала запрашивает:

- Учетную запись пользователя;

- Ввод пользователем с клавиатуры абсолютного пути к расположению
объектов файловой системы (ОФС) пользователя;

а далее появляется меню:

Меню:
-----------------------------------------------
1) Отображение системных процессов (отображение СП по UID, т.е. 1 колонка ps -ef);
2) Расширенный вывод сведений об объектах файловой системы (вывод перечня ОФС по типу объекта);
3) Калькулятор (введите количество переменных, сами переменные и выражение);
4) Выход.

Если пользователю действительно необходимо идентифицироваться, то код
представлен ниже. Здесь пользователь вводит свое имя и добавляет свою учетную
запись с помощью useradd и passwd. Если этого не требуется, то можно
использовать просто echo “…”, read “…”. В случае, когда пользователь
действительно добавляет свою учетную запись, требуется, чтобы скрипт
запускался суперпользователем:
>sudo ./script.sh