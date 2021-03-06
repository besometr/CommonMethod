﻿#Если Сервер Или ТолстыйКлиентОбычноеПриложение Или ВнешнееСоединение Тогда

#Область ПрограммныйИнтерфейс

#Область ОбщиеМетодыОбъектов

// СтруктураОбъекта
// Создает структуру всех реквизитов и табличных частей объекта.
//
// Параметры:
//  СтруктураРеквизитовДляПоиска	- Структура - в качестве ключей передается имена реквизитов,
//  								в качестве значений (опционально) - значения реквизитов.
//  								- Строка - имена реквизитов, перечисленные через запятую.
//  ТекстОшибки						- Строка - содержит описание ошибки, в случае возникновения оной.
//  Отказ							- Булево - признак возникновения ошибки выполнения.
//
// Возвращаемое значение:
//  Структура			- описание объекта, в качестве ключа передаются имена реквизитов, а в качестве значений - значения реквизитов,
//  					реквизиты с именами табличных частей заполнены пустыми массивами.
//  Неопределено		- если не удалось получить объект метаданных по имени
//  					или найденный объект не поддерживается подсистемой.
//
Функция СтруктураОбъекта(СтруктураРеквизитовДляПоиска = Неопределено, ТекстОшибки = "", Отказ = Ложь) Экспорт
	
	СтруктураОбъекта = ОбщиеМетодыОбъектовВызовСервера.СтруктураОбъекта(ПустаяСсылка(), СтруктураРеквизитовДляПоиска, ТекстОшибки, Отказ);
	
	Возврат СтруктураОбъекта;
	
КонецФункции

// СтруктураСтрокиТабличнойЧастиОбъекта
// Создает структуру реквизитов табличной части объекта.
//
// Параметры:
//  ИмяТабличнойЧасти	- Строка - имя табличной части.
//  ТекстОшибки			- Строка - содержит описание ошибки, в случае возникновения оной.
//  Отказ				- Булево - признак возникновения ошибки выполнения.
//
// Возвращаемое значение:
//  Структура			- имена и значения по умолчанию реквизитов табличной части.
//  Неопределено		- если не удалось получить объект метаданных или метаданные ТЧ по имени
//  					или найденный объект не поддерживается подсистемой.
//
Функция СтруктураСтрокиТабличнойЧастиОбъекта(ИмяТабличнойЧасти, ТекстОшибки = "", Отказ = Ложь) Экспорт
	
	ПолноеИмяОбъектаМетаданных = ПустаяСсылка().Метаданные().ПолноеИмя();
	
	СтруктураСтрокиТабличнойЧастиОбъекта = ОбщиеМетодыОбъектовВызовСервера.СтруктураСтрокиТабличнойЧастиОбъекта(ПолноеИмяОбъектаМетаданных, ИмяТабличнойЧасти, ТекстОшибки, Отказ);
	
	Возврат СтруктураСтрокиТабличнойЧастиОбъекта;
	
КонецФункции

// РеквизитыОбъекта
// Возвращает массив структур с именами и значениями реквизитов объектов, прочитанных из информационной базы.
//
// Параметры:
//  МассивСсылок		- Массив - коллекция из нескольких ДокументСсылка.споОплатаПРР, типы всех элементов массива должны совпадать.
//  					- ДокументСсылка.споОплатаПРР - ссылка на объект.
//  СтруктураРеквизитов	- Структура - в качестве ключей передаются имена реквизитов, значения которых необходимо получить.
//  					- Строка - имена реквизитов, перечисленные через запятую, значения которых необходимо получить.
//
// Возвращаемое значение:
//  Массив				- коллекция структур, содержащих реквизиты найденных объектов, если объекты не найдены, то массив будет пустым.
//  Неопределено		- в случае, если по полному имени не удалось найти объект метаданных
//  					или найденный объект не поддерживается подсистемой.
//
Функция РеквизитыОбъекта(МассивСсылок, СтруктураРеквизитов = Неопределено) Экспорт

	Возврат ОбщиеМетодыОбъектовВызовСервера.РеквизитыОбъекта(МассивСсылок, СтруктураРеквизитов);
	
КонецФункции

// СоздатьОбъект
// Создает и записывает объект по переданной структуре параметров.
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

	// Создание объекта.
	Объект = СоздатьОбъектБезЗаписи(СтруктураОбъекта, ДополнительныеСвойства, ТекстОшибки, Отказ);
	
	// Запись.
	Ссылка = ЗаписатьОбъект(Объект, ПараметрыЗаписи, ТекстОшибки, Отказ);	
	
	Возврат Ссылка;
	
КонецФункции

// ОбновитьОбъект
// Обновляет и записывает объект по переданной Ссылке.
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
			
	// Получение объекта.
	Объект = ОбновитьОбъектБезЗаписи(Ссылка,
									СтруктураИзмененийОбъекта,
									ДополнительныеСвойства,
									ОчищатьТЧ,
									ТекстОшибки,
									Отказ);
									
	Если Отказ Тогда 
		Возврат Неопределено;
	КонецЕсли;
	
	// Запись.
	Ссылка = ЗаписатьОбъект(Объект, ПараметрыЗаписи, ТекстОшибки, Отказ);
	
	Возврат Ссылка;
	
КонецФункции

// ПараметрыЗаписиДокумента
// Формирует структуру параметров для записи документов.
//
// Параметры:
//  РежимЗаписи		- РежимЗаписиДокумента - позволяет выбрать один из возможных режимов записи.
//  РежимПроведения	- РежимПроведенияДокумента - позволяет выбрать один из возможных режимов проведения.
//
// Возвращаемое значение:
//  Структура		- параметры для записи документа.
//
Функция ПараметрыЗаписиДокумента(Знач РежимЗаписи = Неопределено, Знач РежимПроведения = Неопределено) Экспорт
	
	// Значения по умолчанию для документа.
	РежимЗаписи = ?(ТипЗнч(РежимЗаписи) = Тип("РежимЗаписиДокумента"), РежимЗаписи, РежимЗаписиДокумента.Проведение);
	РежимПроведения = ?(ТипЗнч(РежимПроведения) = Тип("РежимПроведенияДокумента"), РежимПроведения, РежимПроведенияДокумента.Неоперативный);
	
	Возврат ОбщиеМетодыОбъектовВызовСервера.ПараметрыЗаписиДокумента(РежимЗаписи, РежимПроведения);
	
КонецФункции

#КонецОбласти

#КонецОбласти

#Область СлужебныйПрограммныйИнтерфейс

#Область ОбщиеМетодыОбъектов

// СоздатьОбъектБезЗаписи
// Создает объект по переданной структуре параметров.
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
//  Объект			 		- созданный объект.
//  Неопределено			- в случае возникновения ошибки.
//
Функция СоздатьОбъектБезЗаписи(СтруктураОбъекта, ДополнительныеСвойства = Неопределено, ТекстОшибки = "", Отказ = Ложь) Экспорт 

	// Создание объекта.
	Объект = СоздатьДокумент();
			
	// Заполнение свойств объекта.
	ОбщиеМетодыОбъектовКлиентСервер.ЗаполнитьЗначенияСвойствОбъекта(Объект, СтруктураОбъекта, Истина, ТекстОшибки, Отказ);
	
	// Дополнительные обработчики.
	
	// Установка даты.
	Объект.Дата = ТекущаяДата();
	
	// Установка ссылки на объект.
	Если СтруктураОбъекта.Свойство("Ссылка") И ЗначениеЗаполнено(СтруктураОбъекта.Ссылка) Тогда
		Объект.УстановитьСсылкуНового(СтруктураОбъекта.Ссылка);
	КонецЕсли;
	
	// Установка дополнительных свойств.
	ТипДополнительныхСвойств = ТипЗнч(ДополнительныеСвойства);
	
	Если ТипДополнительныхСвойств = Тип("Структура") Или ТипДополнительныхСвойств = Тип("ФиксированнаяСтруктура") Тогда
		
		Для Каждого ЭлементДопСвойств Из ДополнительныеСвойства Цикл
			Объект.ДополнительныеСвойства.Вставить(ЭлементДопСвойств.Ключ, ЭлементДопСвойств.Значение);
		КонецЦикла;
		
	КонецЕсли;
	
	Возврат Объект;
		
КонецФункции

// ОбновитьОбъектБезЗаписи
// Обновляет объект по переданной Ссылке.
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
//  Объект						- обновляемый объект.
//  Неопределено				- в случае возникновения ошибки.
//
Функция ОбновитьОбъектБезЗаписи(Ссылка, 
	СтруктураИзмененийОбъекта, 
	ДополнительныеСвойства = Неопределено, 	
	ОчищатьТЧ = Истина, 
	ТекстОшибки = "", 
	Отказ = Ложь) Экспорт
	
	Если Не (ЗначениеЗаполнено(Ссылка) И ТипЗнч(Ссылка) = ТипЗнч(ПустаяСсылка())) Тогда
		
		ТекстОшибки = "Не заполнена ссылка для изменения объекта";
		Отказ = Истина;
		Возврат Неопределено;
		
	КонецЕсли;
	
	// Получение объекта.
	Объект = Ссылка.ПолучитьОбъект();
	
	//Заполнение свойств объекта
	ОбщиеМетодыОбъектовКлиентСервер.ЗаполнитьЗначенияСвойствОбъекта(Объект, СтруктураИзмененийОбъекта, ОчищатьТЧ, ТекстОшибки, Отказ);
	
	//Дополнительные обработчики
	//
	
	// Установка дополнительных свойств.
	ТипДополнительныхСвойств = ТипЗнч(ДополнительныеСвойства);
	
	Если ТипДополнительныхСвойств = Тип("Структура") Или ТипДополнительныхСвойств = Тип("ФиксированнаяСтруктура") Тогда
		
		Для Каждого ЭлементДопСвойств Из ДополнительныеСвойства Цикл
			Объект.ДополнительныеСвойства.Вставить(ЭлементДопСвойств.Ключ, ЭлементДопСвойств.Значение);
		КонецЦикла;
		
	КонецЕсли;
	
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
//  Неопределено				- в случае возникновении ошибки записи.
//
Функция ЗаписатьОбъект(Объект, ПараметрыЗаписи = Неопределено, ТекстОшибки = "", Отказ = Ложь)Экспорт
	
	// Значение по умолчанию.
	Ссылка = Неопределено;
		
	//Дополнительные действия при записи.
	
	// Проверка заполнения обязательных реквизитов.
	РезультатПроверкиЗаполнения = Объект.ПроверитьЗаполнение();
	
	Если Не РезультатПроверкиЗаполнения Тогда
		
		ТекстОшибки = "Проверка заполнения обязательных реквизитов не пройдена:
		|" + ОписаниеОшибки();
		Отказ = Истина;
		
	КонецЕсли;
	
	// Установка параметров записи.
	Если ПараметрыЗаписи = Неопределено Тогда
		ПараметрыЗаписи = ПараметрыЗаписиДокумента();
	КонецЕсли;
	
	// Запись.
	Если Не Отказ Тогда
		
		Попытка
			
			Объект.Записать(ПараметрыЗаписи.РежимЗаписи, ПараметрыЗаписи.РежимПроведения);
			Ссылка = Объект.Ссылка;
			
		Исключение
			
			ТекстОшибки = ОписаниеОшибки();
			Отказ = Истина;
			
		КонецПопытки;
		
	КонецЕсли;
	
	Возврат Ссылка;
	
КонецФункции

#КонецОбласти

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

#КонецОбласти

#Область ОбработчикиСобытий

#КонецОбласти

#КонецЕсли