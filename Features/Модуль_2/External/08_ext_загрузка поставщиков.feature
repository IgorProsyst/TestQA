﻿#language: ru
@tree
@ExportScenarios
@IgnoreCIMainBuild

Функционал: загрузка поставщиков

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

@ТипШага: Загрузка данных
@Описание: Экспортный сценарий который перезаполняет поставщиков
@ПримерИспользования: И загрузка поставщиков

Сценарий: загрузка поставщиков

	// Справочник.Контрагенты

	И я проверяю или создаю для справочника "Контрагенты" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Родитель'                                                               | 'ЭтоГруппа' | 'Код'       | 'Наименование'                | 'Регион'                                                             | 'Индекс' | 'Страна' | 'Город'        | 'Улица'         | 'Дом' | 'Телефон'          | 'ЭлектроннаяПочта'       | 'Факс' | 'ВебСайт' | 'ВидЦен'                                                             | 'ДополнительнаяИнформация' | 'КонтактноеЛицо' | 'Широта'  | 'Долгота' |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9bd00055d49b45e11dbd7c695f19911' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000009' | 'ПоставщикВидЦенОптовая '     | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4233' | '125678' | 'Россия' | 'Барнаул'      | 'Ленина'        | '2'   | '+7(999)261-79-79' | 'givotnovodstvo@mail.ru' | ''     | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | ''                         | 'Папанов Р. Д.'  |           |           |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9c500055d49b45e11dbf348086715b0' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000010' | 'ПоставщикВидЦенЗакупочная'   | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '221134' | 'Россия' | 'Москва'       | 'ул. Молодцова' | '4'   | '+7(999)789-67-85' | 'liepa@kornet.ru'        | ''     | ''        | 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная'                   | ''                         | 'Лиепа А.П.'     | 55.87825  | 37.64153  |
		| 'e1cib/data/Справочник.Контрагенты?ref=8af618c04db4fa9511ee72f54eddef2c' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000021' | 'ПоставщикВидЦенМелкооптовая' | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4233' | '125678' | 'Россия' | 'Барнаул'      | 'Ленина'        | '6'   | '+7(999)261-79-95' | 'rogov@mail.ru'          | ''     | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | ''                         | 'Рогов Р. Л.'    |           |           |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9d700179a069b1011dc44ecea1d4f5b' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000011' | 'ПоставщикВидЦенРозничная'    | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4231' | ''       | 'Россия' | 'Екатеринбург' | 'Лесная'        | '12'  | '+7(999)623-568'   | 'mak@jmail.ru'           | ''     | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | ''                         | 'Мякиниа С. Р.'  | 56.869649 | 60.547212 |

