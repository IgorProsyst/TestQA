﻿#language: ru

@tree

Функционал: проверка расчета поля Количество (итог) документа Заказ

Как Менеджер по прадажам я хочу
проверить расчет поля Количество (итог) документа Заказ
чтобы сформировать заказ на продажу  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: проверка расчета поля Количество (итог) документа Заказ

* Открытие формы создания документа
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'

* Заполнение шапки документа
	И заполнение шапки документа документа Заказ (Продажи)	

* Заполнение товарной части
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'  |
		| '000000012' | 'Электротовары' |
	И в таблице "Список" я выбираю текущую строку
	И в таблице "Список" я выбираю текущую строку
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000015' | 'Вихрь'        |
	И в таблице "Список" я выбираю текущую строку	
	И в таблице "Товары" я завершаю редактирование строки
	Тогда таблица "Товары" стала равной:
		| 'Товар' | 'Цена'     | 'Количество' | 'Сумма'    |
		| 'Вихрь' | '7 000,00' | '1'          | '7 000,00' |
	И элемент формы с именем "ТоварыИтогКоличество" стал равен '1'	

* Изменение количества в ручную
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" я выбираю текущую строку	
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2'
	И в таблице "Товары" я завершаю редактирование строки
	И таблица "Товары" стала равной:
		| 'Товар' | 'Цена'     | 'Количество' | 'Сумма'     |
		| 'Вихрь' | '7 000,00' | '2'          | '14 000,00' |	
	И элемент формы с именем "ТоварыИтогКоличество" стал равен '2'
	
* Изменение количества увеличением (уменьшаю)
	Когда открылось окно 'Заказ (создание) *'
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем "ТоварыКоличество" я уменьшаю значение
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '1'
	И в таблице "Товары" я завершаю редактирование строки	
	И таблица "Товары" стала равной:
		| 'Товар' | 'Цена'     | 'Количество' | 'Сумма'    |
		| 'Вихрь' | '7 000,00' | '1'          | '7 000,00' |	
	И элемент формы с именем "ТоварыИтогКоличество" стал равен '1'	

* Изменение количества увеличением (увеличиваю)
	Когда открылось окно 'Заказ (создание) *'
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем "ТоварыКоличество" я увеличиваю значение
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2'
	И в таблице "Товары" в поле с именем "ТоварыКоличество" я увеличиваю значение
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '3'
	И в таблице "Товары" я завершаю редактирование строки	
	И таблица "Товары" стала равной:
		| 'Товар' | 'Цена'     | 'Количество' | 'Сумма'     |
		| 'Вихрь' | '7 000,00' | '3'          | '21 000,00' |	
	И элемент формы с именем "ТоварыИтогКоличество" стал равен '3'	

* Изменение количества увеличением товаров	
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'  |
		| '000000012' | 'Электротовары' |
	И в таблице "Список" я выбираю текущую строку
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000013' | 'Чайники'      |
	И в таблице "Список" я выбираю текущую строку
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000033' | 'VekoNT02'     |
	И в таблице "Список" я выбираю текущую строку	
	И в таблице "Товары" я завершаю редактирование строки	
	И таблица "Товары" стала равной:
		| 'Товар'    | 'Цена'     | 'Количество' | 'Сумма'     |
		| 'Вихрь'    | '7 000,00' | '3'          | '21 000,00' |
		| 'VekoNT02' | '7 500,00' | '1'          | '7 500,00'  |	
	И элемент формы с именем "ТоварыИтогКоличество" стал равен '4'		

* Номер докумена
	И я нажимаю на кнопку "Записать"
	И я запоминаю значение поля "Номер" как "$Номер$"	

* Проведение документа
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Заказ (создание) *' в течение 20 секунд
	
* Проверка создания документа
	Тогда открылось окно 'Заказы товаров'
	И таблица "Список" содержит строки :
		| 'Номер' |
		| '$Номер$'|