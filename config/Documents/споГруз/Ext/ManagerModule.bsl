﻿
#Область ПрограммныйИнтерфейс

// ++ Подсистема Общие методы объектов

// СтруктураОбъекта
// Создает структуру всех реквизитов и табличных частей объекта.
//
// Параметры:
//	СтруктураРеквизитовДляПоиска	- Структура	- Необязательный. В качестве ключа передается имена реквизитов, 
//						                       	а в качестве значения (опционально) - значение реквизита.
//				  					- Строка	- Необязательный. Имена реквизитов, перечисленные через запятую.
//                      
//	ТекстОшибки						- Строка	- Содержит описание ошибки, в случае возникновения оной.
//	Отказ							- Булево	- Признак возникновения ошибки выполнения.
//
// Возвращаемое значение:
//	Структура		- Описание объекта. В качестве ключа передаются имена реквизитов, а в качестве значения - значение реквизита.
//					Реквизиты с именами табличных частей заполнены пустыми массивами.
//	Неопределено	- Если не удалось получить объект метаданных по имени или найденный вид метаданных не поддерживается конструктором.
// 
Функция СтруктураОбъекта(СтруктураРеквизитовДляПоиска = Неопределено, ТекстОшибки = "", Отказ = Ложь)Экспорт 
	
	ПустаяСсылка = Документы.споГруз.ПустаяСсылка();
	
	//Структура 
	СтруктураОбъекта = ОбщиеМетодыОбъектовВызовСервера.СтруктураОбъекта(ПустаяСсылка, СтруктураРеквизитовДляПоиска, ТекстОшибки, Отказ);
					
	Возврат СтруктураОбъекта;
	 
КонецФункции

// СтруктураСтрокиТабличнойЧастиОбъекта
// Создает структуру реквизитов табличной части объекта.
//
// Параметры:
//	ИмяТабличнойЧасти	- Строка	- Имя табличной части.
//	ТекстОшибки			- Строка	- Содержит описание ошибки, в случае возникновения оной.
//	Отказ				- Булево	- Признак возникновения ошибки выполнения.
//
// Возвращаемое значение:
//	Структура		- Имена и значения по умолчанию реквизитов табличной части.
//	Неопределено	- Если не удалось получить объект метаданных или метаданные ТЧ по имени 
//					или найденный объект не поддерживается подсистемой "Общие методы объектов".
//
Функция СтруктураСтрокиТабличнойЧастиОбъекта(ИмяТабличнойЧасти, ТекстОшибки = "", Отказ = Ложь)Экспорт

	ПолноеИмяОбъектаМетаданных = "Документ.споГруз";

	СтруктураСтрокиТабличнойЧастиОбъекта = ОбщиеМетодыОбъектовВызовСервера.СтруктураСтрокиТабличнойЧастиОбъекта(ПолноеИмяОбъектаМетаданных, ИмяТабличнойЧасти, ТекстОшибки, Отказ);
	
	Возврат СтруктураСтрокиТабличнойЧастиОбъекта;

КонецФункции

// РеквизитыОбъекта
// Возвращает массив структур с именами и значениями реквизитов объектов прочитанные из информационной базы.
//
// Параметры:
//  МассивСсылок		- Массив	- Коллекция произвольных ссылок (СправочникСсылка, ДокументСсылка, ПланОбменаСсылка, ПВХ, ЗадачаСсылка)
//									Типы всех элементов массива должны совпадать.
//						- Ссылка	- (СправочникСсылка, ДокументСсылка, ПланОбменаСсылка, ПВХ, ЗадачаСсылка)
//  СтруктураРеквизитов	- Структура - Необязательный. В качестве ключа передается имена реквизитов,
//									значения которых необходимо получить.
//						- Строка	- Необязательно. Имена реквизитов, перечисленные через запятую,
//									значения которых необходимо получить.
//
// Возвращаемое значение:
//	Массив			- Коллекция структур, содержащих реквизиты найденных объектов.
//  Массив			- Пустой, если объекты не найдены.
//	Неопределено	- В случае, если по полному имени не удалось найти объект метаданных 
//					или найденный объект не поддерживается подсистемой "Общие методы объектов".
//
Функция РеквизитыОбъекта(МассивСсылок, СтруктураРеквизитов = Неопределено) Экспорт

	Возврат ОбщиеМетодыОбъектовВызовСервера.РеквизитыОбъекта(МассивСсылок, СтруктураРеквизитов);
	
КонецФункции

// СоздатьОбъект
// Создает и сохраняет объект по переданной структуре параметров.
//
// Параметры:
//	СтруктураОбъекта			- Структура	- Содержит реквизитов и табличные части объекта,
//								Для реквизитов в качестве ключа передаются имена реквизитов, а в качестве значения - значение реквизита.
//								Для табличных частей в качестве ключа передаются имена табличных частей, а в качестве значения - массивы структур реквизитов ТЧ.
//	ДополнительныеСвойства		- Структура	- Значения для заполнения одноименной структуры объекта.
//								Используется в случаях, когда необходимо хранить некоторые значения, связанные с объектом,
//								на время выполнения некоторых операций, без изменения объекта.
//	ПараметрыЗаписи				- Структура	- Параметры для записи документов (Режим Записи и Режим Проведения).
//	ТекстОшибки					- Строка	- Содержит описание ошибки, в случае возникновения оной.
//	Отказ						- Булево	- Признак возникновения ошибки выполнения.
//
// Возвращаемое значение:
//	ДокументСсылка.СпоГруз		- Ссылка на созданный объект.
//	Неопределено				- В случае ошибки.
//
Функция СоздатьОбъект(СтруктураОбъекта, ДополнительныеСвойства = Неопределено, ПараметрыЗаписи = Неопределено, ТекстОшибки = "", Отказ = Ложь)Экспорт 

	//Создание объекта
	оГруз = Документы.споГруз.СоздатьДокумент();
	
	//Заполнение свойств объекта
	ОбщиеМетодыОбъектовКлиентСервер.ЗаполнитьЗначенияСвойствОбъекта(оГруз, СтруктураОбъекта, Истина, ТекстОшибки, Отказ);
		
	//Дополнительные обработчики
	//Установка даты
	//оГруз.Дата = рсжСерверный.споТекущаяДатаСервера();
	оГруз.Дата = ТекущаяДата();
	
	//Установка ссылки на объект
	Если СтруктураОбъекта.Свойство("Ссылка") И ЗначениеЗаполнено(СтруктураОбъекта.Ссылка) Тогда 
		оГруз.УстановитьСсылкуНового(СтруктураОбъекта.Ссылка);
	КонецЕсли;

	//Запись
	сГруз = ЗаписатьОбъект(оГруз, ДополнительныеСвойства, ПараметрыЗаписи, ТекстОшибки, Отказ);
	
	Возврат сГруз;
	
КонецФункции

// ОбновитьОбъект
// Обновляет объект по переданной Ссылке.
//
// Параметры:
//	Ссылка						- ДокументСсылка.споГруз - ссылка на изменяемый объект.
//	СтруктураИзмененийОбъекта	- Структура	- Содержит реквизиты и табличные части объекта, которые нужно изменить.
//								Для реквизитов в качестве ключа передаются имена реквизитов, а в качестве значения - значение реквизита.
//								Для табличных частей в качестве ключа передаются имена табличных частей, а в качестве значения - массивы структур реквизитов ТЧ.
//	ДополнительныеСвойства		- Структура	- Значения для заполнения одноименной структуры объекта.
//								Используется в случаях, когда необходимо хранить некоторые значения, связанные с объектом,
//								на время выполнения некоторых операций, без изменения объекта.
//	ПараметрыЗаписи				- Структура	- Параметры для записи документов (Режим Записи и Режим Проведения).
//	ОчищатьТЧ					- Булево	- Необязательный. Если Истина, перед добавлением строк в 
//								указанные в Структуре Источнике табличные части, последние будут очищены.
//	ТекстОшибки					- Строка	- Содержит описание ошибки, в случае возникновения оной.
//	Отказ						- Булево	- Признак возникновения ошибки выполнения.
//
// Возвращаемое значение:
//	Ссылка			- Ссылка на измененный объект.
//	Неопределено	- В случае ошибки записи.
//
Функция ОбновитьОбъект(Ссылка, СтруктураИзмененийОбъекта, ДополнительныеСвойства = Неопределено, ПараметрыЗаписи = Неопределено, 
	ОчищатьТЧ = Истина, ТекстОшибки = "", Отказ = Ложь)Экспорт
		
	Если Не (ЗначениеЗаполнено(Ссылка) И ТипЗнч(Ссылка) = Тип("ДокументСсылка.споГруз")) Тогда 
		ТекстОшибки = "Не заполнена ссылка для изменения объекта.";
		Отказ = Истина;
		Возврат Неопределено;
	КонецЕсли;
	
	//Получение объекта
	оГруз = Ссылка.ПолучитьОбъект();
	
	//Заполнение свойств объекта
	ОбщиеМетодыОбъектовКлиентСервер.ЗаполнитьЗначенияСвойствОбъекта(оГруз, СтруктураИзмененийОбъекта, ОчищатьТЧ, ТекстОшибки, Отказ);

	//Дополнительные обработчики
	//
	
	//Запись
	сГруз = ЗаписатьОбъект(оГруз, ДополнительныеСвойства, ПараметрыЗаписи, ТекстОшибки, Отказ);
	
	Возврат сГруз;
		
КонецФункции

// ПараметрыЗаписиДокумента
// Формирует структуру параметров для записи документов
//
// Параметры:
//	РежимЗаписи		- РежимЗаписиДокумента		- Необязательный. Позволяет выбрать один из возможных режимов записи.
//												Значение по умолчанию: Запись.
//	РежимПроведения	- РежимПроведенияДокумента	- Необязательный. Позволяет выбрать один из возможных режимов проведения.
// 												Значение по умолчанию: Неоперативный. 
//
// Возвращаемое значение:
//	Структура		- Параметры для записи документа
//
Функция ПараметрыЗаписиДокумента(Знач РежимЗаписи = Неопределено, Знач РежимПроведения = Неопределено)Экспорт 
	
	//Значения по умолчанию для документа споГруз
	РежимЗаписи = ?(ТипЗнч(РежимЗаписи) = Тип("РежимЗаписиДокумента"), РежимЗаписи, РежимЗаписиДокумента.Проведение);
	РежимПроведения = ?(ТипЗнч(РежимПроведения) = Тип("РежимПроведенияДокумента"), РежимПроведения, РежимПроведенияДокумента.Неоперативный);
	
	Возврат ОбщиеМетодыОбъектовВызовСервера.ПараметрыЗаписиДокумента(РежимЗаписи, РежимПроведения);
	
КонецФункции

// -- Подсистема Общие методы объектов.


#КонецОбласти

#Область ОбработчикиСобытий

#КонецОбласти

#Область СлужебныйПрограммныйИнтерфейс

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

// ЗаписатьОбъект
// Записывает переданный объект в БД.
//
// Параметры:
//	Объект						- ДокументОбъект.споГруз - изменяемый объект.
//	ДополнительныеСвойства		- Структура	- Значения для заполнения одноименной структуры объекта.
//								Используется в случаях, когда необходимо хранить некоторые значения, связанные с объектом,
//								на время выполнения некоторых операций, без изменения объекта.
//	ПараметрыЗаписи				- Структура	- Параметры для записи документов (Режим Записи и Режим Проведения)
//	ТекстОшибки					- Строка	- Содержит описание ошибки, в случае возникновения оной.
//	Отказ						- Булево	- Признак возникновения ошибки выполнения.
//
// Возвращаемое значение:
//	ДокументСсылка.СпоГруз	- Ссылка на созданный объект.
//	Неопределено			- В случае ошибки записи.
//
Функция ЗаписатьОбъект(Объект, ДополнительныеСвойства = Неопределено, ПараметрыЗаписи = Неопределено, ТекстОшибки = "", Отказ = Ложь)
	
	//Значение по умолчанию
	сГруз = Неопределено;
	
	//Установка дополнительных свойств
	ТипДополнительныехСвойств = ТипЗнч(ДополнительныеСвойства);
	Если ТипДополнительныехСвойств = Тип("Структура") Или ТипДополнительныехСвойств = Тип("ФиксированнаяСтруктура") Тогда 
		Для Каждого ЭлементДопСвойств Из ДополнительныеСвойства Цикл 
			Объект.ДополнительныеСвойства.Вставить(ЭлементДопСвойств.Ключ, ЭлементДопСвойств.Значение);
		КонецЦикла;
	КонецЕсли;
	//
	
	//Дополнительные действия при записи
	//
	
	//Проверка заполениня обязательных реквизитов
	РезультатПроверкиЗаполнения = Объект.ПроверитьЗаполнение();
	Если Не РезультатПроверкиЗаполнения Тогда 
		ТекстОшибки = "Проверка заполнения обязательных реквизитов не пройдена.
						|" + ОписаниеОшибки();
		Отказ = Истина;
	КонецЕсли;
	
	//Установка параметров записи
	Если ПараметрыЗаписи = Неопределено Тогда 
		ПараметрыЗаписи = ПараметрыЗаписиДокумента();
	КонецЕсли;
	
	//Запись
	Если Не Отказ Тогда 
		Попытка
			Объект.Записать(ПараметрыЗаписи.РежимЗаписи, ПараметрыЗаписи.РежимПроведения);
			сГруз = Объект.Ссылка;
		Исключение
			ТекстОшибки = ОписаниеОшибки();
			Отказ = Истина;		
		КонецПопытки;
	КонецЕсли;
	
	Возврат сГруз;
	
КонецФункции

#КонецОбласти

