﻿Процедура СоздатьГрузСУпаковкой(ГородОтправитель, ГородПолучатель, ТекстОшибки = "") Экспорт
	
	//оГруз = Документы.споГруз.СоздатьДокумент();
	//оГруз.Город = ГородОтправитель;
	////оГруз.ГородПолучатель = ГородПолучатель;
	//НоваяСтрока = оГруз.Упаковка.Добавить();
	//НоваяСтрока.Упаковка = "Картон";
	//НоваяСтрока.Повреждение = "Без повреждений";
	//Попытка
	//	оГруз.Записать();
	//Исключение
	//	Сообщить(ОписаниеОшибки());
	//КонецПопытки;
	
	СтруктураОбъекта = Новый Структура;
	
	СтруктураОбъекта.Вставить("Город", ГородОтправитель);
	СтруктураОбъекта.Вставить("ГородПолучатель", ГородПолучатель);
	
	ТаблицаУпаковок = Новый Массив;
	
	НоваяСтрока = Новый Структура;
	НоваяСтрока.Вставить("Упаковка", "Картон");
	НоваяСтрока.Вставить("Повреждение", "Без повреждений");
	
	ТаблицаУпаковок.Добавить(НоваяСтрока);
	
	СтруктураОбъекта.Вставить("Упаковка", ТаблицаУпаковок);
	
	НовыйГруз = споГрузВызовСервера.СоздатьОбъект(СтруктураОбъекта,,, ТекстОшибки);
	
КонецПроцедуры

Процедура СоздатьГрузСУпаковкойИПоменятьГородаМестами(ГородОтправитель, ГородПолучатель, ТекстОшибки = "") Экспорт
	
	//оГруз = Документы.споГруз.СоздатьДокумент();
	//оГруз.Город = ГородОтправитель;
	//оГруз.ГородПолучатель = ГородПолучатель;
	//НоваяСтрока = оГруз.Упаковка.Добавить();
	//НоваяСтрока.Упаковка = "Картон";
	//НоваяСтрока.Повреждение = "Без повреждений";
	//оГруз.ПоменятьГородаМестами();
	//Попытка
	//	оГруз.Записать();
	//Исключение
	//	Сообщить(ОписаниеОшибки());
	//КонецПопытки;
	
	СтруктураОбъекта = Новый Структура;
	
	СтруктураОбъекта.Вставить("Город", ГородОтправитель);
	СтруктураОбъекта.Вставить("ГородПолучатель", ГородПолучатель);
	
	ТаблицаУпаковок = Новый Массив;
	
	НоваяСтрока = Новый Структура;
	НоваяСтрока.Вставить("Упаковка", "Картон");
	НоваяСтрока.Вставить("Повреждение", "Без повреждений");
	
	ТаблицаУпаковок.Добавить(НоваяСтрока);
	
	СтруктураОбъекта.Вставить("Упаковка", ТаблицаУпаковок);
	
	НовыйГруз = споГрузВызовСервера.СоздатьГрузСУпаковкойИПоменятьГородаМестами(СтруктураОбъекта,,, ТекстОшибки);
	
КонецПроцедуры