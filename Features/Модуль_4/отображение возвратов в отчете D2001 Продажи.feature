﻿#language: ru

@tree
@Отчеты

Функционал: тестирование отображение возвратов в отчете D2001 Продажи

Как Тестировщик я хочу
протестировать отображение возвратов в отчете D2001 Продажи
чтобы проверить что у пользователя не возникает проблем   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _0201 подготовительный сценарий (тестирование отчета D2001 Продажи)
	Когда экспорт основных данных
	Когда экспорт документов возврат

	И я выполняю код встроенного языка на сервере		
		| 'Документы.SalesReturn.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);' |

Сценарий: _0202 проверка отчета по Продажам
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Отчеты' 'D2001 Продажи'
	Тогда открылось окно 'D2001 Продажи'
	И в табличном документе 'Result' я перехожу к ячейке "R1C1"
	И я нажимаю на кнопку 'Сформировать'
	И я жду когда в табличном документе "Result" заполнится ячейка "R12C2" в течение 20 секунд
	Дано Табличный документ "Result" равен макету "ПродажиВозврат1" по шаблону
	И в табличном документе "Result" ячейка с адресом "R12C2" равна "-*" по шаблону
