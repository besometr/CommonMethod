﻿
#Область ПрограммныйИнтерфейс

#Область ОбщиеМетодыОбъектов
// СоздатьГрузСУпаковкойИПоменятьГородаМестами
// Интерфейс для создания и записи объекта по переданной структуре параметров на Сервере.
//
// Параметры:
//  СтруктураОбъекта		- Структура - см. функцию ОбщиеМетодыОбъектовВызовСервера.СтруктураОбъекта.
//  ДополнительныеСвойства	- Структура - значения для заполнения одноименной структуры объекта,
//  						используется в случаях, когда необходимо хранить некоторые значения, связанные с объектом,
//  						на время выполнения некоторых операций, без изменения объекта.
//  ПараметрыЗаписи			- Структура - параметры для записи документов (режим записи и режим проведения).
//  ТекстОшибки				- Строка - содержит описание ошибки, в случае возникновения оной.
//  Отказ					- Булево - признак возникновения ошибки выполнения.
//
// Возвращаемое значение:
//  Ссылка			 		- ссылка на созданный объект.
//  Неопределено			- в случае ошибки записи.
//
Функция СоздатьГрузСУпаковкойИПоменятьГородаМестами(СтруктураОбъекта, ДополнительныеСвойства = Неопределено, ПараметрыЗаписи = Неопределено, ТекстОшибки = "", Отказ = Ложь) Экспорт 

	// Перенаправка в модуль менеджера объекта
	Объект = СоздатьОбъектБезЗаписи(СтруктураОбъекта, ДополнительныеСвойства, ТекстОшибки, Отказ);
	
	Объект.ПоменятьГородаМестами();
	
	Ссылка = ЗаписатьОбъект(Объект, ПараметрыЗаписи, ТекстОшибки, Отказ);
	
	Возврат Ссылка;
	
КонецФункции


// СоздатьОбъект
// Интерфейс для создания и записи объекта по переданной структуре параметров на Сервере.
//
// Параметры:
//  СтруктураОбъекта		- Структура - см. функцию ОбщиеМетодыОбъектовВызовСервера.СтруктураОбъекта.
//  ДополнительныеСвойства	- Структура - значения для заполнения одноименной структуры объекта,
//  						используется в случаях, когда необходимо хранить некоторые значения, связанные с объектом,
//  						на время выполнения некоторых операций, без изменения объекта.
//  ПараметрыЗаписи			- Структура - параметры для записи документов (режим записи и режим проведения).
//  ТекстОшибки				- Строка - содержит описание ошибки, в случае возникновения оной.
//  Отказ					- Булево - признак возникновения ошибки выполнения.
//
// Возвращаемое значение:
//  Ссылка			 		- ссылка на созданный объект.
//  Неопределено			- в случае ошибки записи.
//
Функция СоздатьОбъект(СтруктураОбъекта, ДополнительныеСвойства = Неопределено, ПараметрыЗаписи = Неопределено, ТекстОшибки = "", Отказ = Ложь) Экспорт 

	Ссылка = Документы.споГруз.СоздатьОбъект(СтруктураОбъекта, ДополнительныеСвойства = Неопределено, ПараметрыЗаписи, ТекстОшибки = "", Отказ = Ложь);
			
	Возврат Ссылка;
	
КонецФункции

// ОбновитьОбъект
// Интерфейс для обновления и записи объекта по переданной Ссылке на Сервере.
//
// Параметры:
//  Ссылка						- Ссылка - ссылка на изменяемый объект.
//  СтруктураИзмененийОбъекта	- Структура - содержит изменяемые реквизиты и табличные части объекта (см. функцию ОбщиеМетодыОбъектовВызовСервера.СтруктураОбъекта).
//  ДополнительныеСвойства		- Структура - значения для заполнения одноименной структуры объекта,
//  							используется в случаях, когда необходимо хранить некоторые значения, связанные с объектом,
//  							на время выполнения некоторых операций, без изменения объекта.
//  ПараметрыЗаписи				- Структура - параметры для записи документов (режим записи и режим проведения).
//  ОчищатьТЧ					- Булево - если Истина, то перед добавлением строк в указанные в структуре табличные части последние будут очищены.
//  ТекстОшибки					- Строка - содержит описание ошибки, в случае возникновения оной.
//  Отказ						- Булево - признак возникновения ошибки выполнения.
//
// Возвращаемое значение:
//  Ссылка						- ссылка на измененный объект.
//  Неопределено				- в случае ошибки записи.
//
Функция ОбновитьОбъект(Ссылка,
	СтруктураИзмененийОбъекта,
	ДополнительныеСвойства = Неопределено,
	ПараметрыЗаписи = Неопределено,
	ОчищатьТЧ = Истина,
	ТекстОшибки = "",
	Отказ = Ложь) Экспорт
			
	// Перенаправка в модуль менеджера объекта
	Ссылка = Документы.споГруз.ОбновитьОбъект(Ссылка,
												СтруктураИзмененийОбъекта,
												ДополнительныеСвойства,
												ПараметрыЗаписи,
												ОчищатьТЧ,
												ТекстОшибки,
												Отказ);
														
	Возврат Ссылка;
	 
КонецФункции

// ПараметрыЗаписиДокумента
// Интерфейс для структуры параметров для записи документов на Сервере.
//
// Параметры:
//  РежимЗаписи		- РежимЗаписиДокумента - позволяет выбрать один из возможных режимов записи.
//  РежимПроведения	- РежимПроведенияДокумента - позволяет выбрать один из возможных режимов проведения.
//
// Возвращаемое значение:
//  Структура		- параметры для записи документа.
//
Функция ПараметрыЗаписиДокумента(Знач РежимЗаписи = Неопределено, Знач РежимПроведения = Неопределено) Экспорт
	
	// Перенаправка в модуль менеджера объекта
	Возврат Документы.споГруз.ПараметрыЗаписиДокумента(РежимЗаписи, РежимПроведения);
	
КонецФункции

#КонецОбласти

#КонецОбласти

#Область СлужебныйПрограммныйИнтерфейс

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

#Область ОбщиеМетодыОбъектов

// СоздатьОбъектБезЗаписи
// Интерфейс для создания объекта по переданной структуре параметров на Сервере без записи.
//
// Параметры:
//  СтруктураОбъекта		- Структура - см. функцию ОбщиеМетодыОбъектовВызовСервера.СтруктураОбъекта.
//  ДополнительныеСвойства	- Структура - значения для заполнения одноименной структуры объекта,
//  						используется в случаях, когда необходимо хранить некоторые значения, связанные с объектом,
//  						на время выполнения некоторых операций, без изменения объекта.
//  ПараметрыЗаписи			- Структура - параметры для записи документов (режим записи и режим проведения).
//  ТекстОшибки				- Строка - содержит описание ошибки, в случае возникновения оной.
//  Отказ					- Булево - признак возникновения ошибки выполнения.
//
// Возвращаемое значение:
//  Объект					- созданный объект.
//  Неопределено			- в случае возникновения ошибки.
//
Функция СоздатьОбъектБезЗаписи(СтруктураОбъекта, ДополнительныеСвойства = Неопределено, ТекстОшибки = "", Отказ = Ложь) 

	// Перенаправка в модуль менеджера объекта
	Объект = Документы.споГруз.СоздатьОбъектБезЗаписи(СтруктураОбъекта, ДополнительныеСвойства, ТекстОшибки, Отказ);
			
	Возврат Объект;
		
КонецФункции

// ОбновитьОбъектБезЗаписи
// Интерфейс для обновления объекта по переданной Ссылке на Сервере без записи.
//
// Параметры:
//  Ссылка						- Ссылка - ссылка на изменяемый объект.
//  СтруктураИзмененийОбъекта	- Структура - содержит изменяемые реквизиты и табличные части объекта (см. функцию ОбщиеМетодыОбъектовВызовСервера.СтруктураОбъекта).
//  ДополнительныеСвойства		- Структура - значения для заполнения одноименной структуры объекта,
//  							используется в случаях, когда необходимо хранить некоторые значения, связанные с объектом,
//  							на время выполнения некоторых операций, без изменения объекта.
//  ПараметрыЗаписи				- Структура - параметры для записи документов (режим записи и режим проведения).
//  ОчищатьТЧ					- Булево - если Истина, то перед добавлением строк в указанные в структуре табличные части последние будут очищены.
//  ТекстОшибки					- Строка - содержит описание ошибки, в случае возникновения оной.
//  Отказ						- Булево - признак возникновения ошибки выполнения.
//
// Возвращаемое значение:
//  Объект						- измененный объект.
//  Неопределено				- в случае возникновения ошибки.
//
Функция ОбновитьОбъектБезЗаписи(Ссылка, 
	СтруктураИзмененийОбъекта, 
	ДополнительныеСвойства = Неопределено, 	
	ОчищатьТЧ = Истина, 
	ТекстОшибки = "", 
	Отказ = Ложь)
	
	// Перенаправка в модуль менеджера объекта	
	Объект = Документы.споГруз.ОбновитьОбъектБезЗаписи(Ссылка,
														СтруктураИзмененийОбъекта,
														ДополнительныеСвойства,
														ОчищатьТЧ,
														ТекстОшибки,
														Отказ);
														
	Возврат Объект;			
		
КонецФункции

// ЗаписатьОбъект
// Записывает переданный объект в БД.
//
// Параметры:
//  Объект						- Объект - изменяемый объект.
//  ПараметрыЗаписи				- Структура - параметры для записи документов (режим записи и режим проведения).
//  ТекстОшибки					- Строка - содержит описание ошибки, в случае возникновения оной.
//  Отказ						- Булево - признак возникновения ошибки выполнения.
//
// Возвращаемое значение:
//  Ссылка						- ссылка на записанный объект.
//  Неопределено				- в случае возникновения ошибки записи.
//
Функция ЗаписатьОбъект(Объект, ПараметрыЗаписи = Неопределено, ТекстОшибки = "", Отказ = Ложь)
	
	// Перенаправка в модуль менеджера объекта
	Ссылка = Документы.споГруз.ЗаписатьОбъект(Объект, ПараметрыЗаписи, ТекстОшибки, Отказ);
	
	Возврат Ссылка;
	
КонецФункции

#КонецОбласти

#КонецОбласти
