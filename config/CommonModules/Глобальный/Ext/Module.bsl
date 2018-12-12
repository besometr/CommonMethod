﻿////////////////////////////////////////////////////////////////////////////////
// Глобальный модуль.
// Дополнительные процедуры и функции, необходимые для тестирования подсистемы "Общие методы объектов".
// За основу взяты объекты конфигурации СПО "Пегас"
////////////////////////////////////////////////////////////////////////////////

#Область ПрограммныйИнтерфейс

// споФилиал_МВ
// Осуществляет поиск предопределенного элемента справочника "споФилиалы"
// по коду МВ
//
// Возвращаемое значение:
//	СправочникСсылка.споФилиалы	- филиал Москва Восток
//
Функция споФилиал_МВ() Экспорт
	Возврат Справочники.споФилиалы.НайтиПоКоду("МВ");
КонецФункции

// споФилиал_СП
// Осуществляет поиск предопределенного элемента справочника "споФилиалы"
// по коду СП
//
// Возвращаемое значение:
//	СправочникСсылка.споФилиалы	- филиал Санкт-Петербург
//
Функция споФилиал_СП() Экспорт
	Возврат Справочники.споФилиалы.НайтиПоКоду("СП");
КонецФункции

#КонецОбласти

#Область СлужебныйПрограммныйИнтерфейс

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

#КонецОбласти
