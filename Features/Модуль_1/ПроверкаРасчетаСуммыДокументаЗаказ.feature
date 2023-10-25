﻿#language: ru

@tree
//Написать сценарный тест на проверку расчета суммы документа Заказ (подсистема Продажи) при изменении количества и цены
Функционал: проверка расчета суммы документа Заказ (подсистема Продажи) при изменении количества и цены

Как Менеджер по продажам я хочу
проверить расчет суммы документа Заказ (подсистема Продажи) при изменении количества и цены
чтобы создать Заказ товаров для продажи

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: проверка расчета суммы документа Заказ (подсистема Продажи) при изменении количества и цены
* Открытие формы создания документа
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'
* Заполнение шапки документа
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Все для дома"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Магазин "Бытовая техника"'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Малый'
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
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
	Тогда открылось окно 'Заказ (создание) *'
	И в таблице "Товары" я завершаю редактирование строки
	Тогда таблица "Товары" стала равной:
		| 'Товар' | 'Цена'     | 'Количество' | 'Сумма'    |
		| 'Вихрь' | '7 000,00' | '1'          | '7 000,00' |
	И элемент формы с именем "ТоварыИтогКоличество" стал равен '1'
	И элемент формы с именем "ТоварыИтогСумма" стал равен '7 000'
* Расчет суммы при изменении количества
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" я выбираю текущую строку
	//И в таблице "Товары" в поле с именем "ТоварыКоличество" я увеличиваю значение
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2'
	И в таблице "Товары" я завершаю редактирование строки
	Тогда в таблице "Товары" поле с именем 'ТоварыСумма' имеет значение "14 000,00"
	И элемент формы с именем "ТоварыИтогКоличество" стал равен '2'
	И элемент формы с именем "ТоварыИтогСумма" стал равен '14 000'	
* Расчет суммы при изменении цены
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '8 000,00'
	И в таблице "Товары" я завершаю редактирование строки
	Тогда в таблице "Товары" поле с именем 'ТоварыСумма' имеет значение "16 000,00"
	И элемент формы с именем "ТоварыИтогКоличество" стал равен '2'
	И элемент формы с именем "ТоварыИтогСумма" стал равен '16 000'	
* Расчет суммы при изменении количества и цены
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем "ТоварыКоличество" я увеличиваю значение
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '4'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '5 000,00'
	И в таблице "Товары" я завершаю редактирование строки
	Тогда в таблице "Товары" поле с именем 'ТоварыСумма' имеет значение "20 000,00"
	И элемент формы с именем "ТоварыИтогКоличество" стал равен '4'
	И элемент формы с именем "ТоварыИтогСумма" стал равен '20 000'
	И я нажимаю на кнопку "Записать"
* Номер докумена
	И я запоминаю значение поля "Номер" как "$Номер$"	
* Проведение документа
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Заказ (создание) *' в течение 20 секунд
* Проверка создания документа
	Тогда открылось окно 'Заказы товаров'
	И таблица "Список" содержит строки :
		| 'Номер' |
		| '$Номер$'|