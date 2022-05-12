-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 12 2022 г., 10:21
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `nova_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `apartments`
--

CREATE TABLE `apartments` (
  `id` int(11) NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `apartments`
--

INSERT INTO `apartments` (`id`, `photo`, `status`, `name`, `price`, `address`, `views`) VALUES
(1, 'work-8.jpg', 'Продажа', '1-я квартира, 37м²', 3080000, 'Пенза, ул. Аустрина, 1', 0),
(2, 'work-2.jpg', 'Продажа', '1-я квартира, 67м²', 8670000, 'Пенза, ул. Пушкина, 140', 0),
(3, 'work-1.jpg', 'Продажа', 'Вилла, 189м²', 23800000, 'Засечное, ул. Радужная, 234', 0),
(4, 'work-7.jpg', 'Продажа', 'Загородный дом, 102м²', 4670000, 'Засечное, ул. 1-е Октября, 14', 0),
(5, 'work-5.jpg', 'Аренда', 'Загородный дом, 110м²', 34000, 'Засечное, ул. 1-е Октября, 54', 1),
(6, 'work-9.jpg', 'Продажа', 'Пентхаус , 77м²', 4880000, 'Пенза, ул. 8 Марта, 140', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `rubrika` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `rubrika`, `title`, `text`, `photo`, `autor`, `date`, `views`) VALUES
(1, 'Новости рынка', 'В законопроект о застройке заповедников внесут поправки', 'В законопроект, разрешающий застройку заповедников, планируют внести изменения, пишет РБК. Комитет Госдумы по строительству и ЖКХ предложил исключить озеро Байкал из документа, упрощающего возведение инфраструктуры в заповедных зонах. Однако в других охранных зонах могут разрешить строительство заводов и нефтепроводов.</br></br>Комитет 15 апреля одобрил изменения ко второму чтению законопроекта. Копия документа имеется в распоряжении издания. Согласно поправкам, поручено добавить закрытый перечень инфраструктуры, которую можно строить в других заповедниках.  Информацию о поправках подтвердила пресс-служба комитета, зампредседателя комитета Светлана Разворотнева. Второе чтение документа состоится на этой неделе.</br></br>Законопроект «О распространении практики строительства объектов транспортной инфраструктуры на иные виды объектов инфраструктуры» был принят Госдумой в первом чтении 6 апреля. Согласно документу, строительные процедуры в охранных зонах будут упрощены. Речь идет о строительстве  в заповедных зонах «приоритетных инфраструктурных проектов».   В первой редакции документа говорилось о снятии обязательства по проведению экологической экспертизы на особо охраняемых природных территориях, в том числе в районе озера Байкал, при возведении неограниченного перечня инфраструктуры до конца 2024 года.  В комитете Госдумы по экологии, природным ресурсам и охране окружающей среды раскритиковали этот вариант законопроекта, высказав опасение, что в заповедных зонах начнется строительство промышленных объектов. Депутаты заявили, что промышленная деятельность нанесет охранным зонам невосполнимый ущерб. С критикой документа также выступили  российское отделение Greenpeace и Всемирный фонд дикой природы.</br></br>Согласно поправкам, предложенным ко второму чтению, в районе озера Байкал будет запрещено строить объекты инфраструктуры. Исключением является расширение и модернизация Байкало-Амурской и Транссибирской железнодорожных магистралей. Положение о необязательности экологической экспертизы при строительстве в границах ООПТ «приоритетных проектов инфраструктуры» оставлено в силе. При реализации таких проектов потребуется только градостроительная экспертиза.</br></br>Строить или реконструировать объекты инфраструктуры можно будет только  с соблюдением требований об охране окружающей среды. При этом следует проводить мероприятия по охране окружающей среды. Формулировку о разрешении строительства в границах ООПТ «иной инфраструктуры», предполагающую неограниченное количество объектов, убрали из документа.</br></br>Депутаты предложили  создать перечень проектов инфраструктуры, которые можно будет возводить в охранных зонах. Также предложено дать определение «приоритетным проектам по модернизации и расширению инфраструктуры». К ним относятся проекты, возводимые для выполнения «приоритетов, целей и задач» стратегий социально-экономического и пространственного развития. Кроме того, к ним относятся объекты, которые требуются для обеспечения строительства, эксплуатации, реконструкции объектов инфраструктуры, в том числе транспортно-пересадочные узлы, автомобильные и железные дороги, инженерная инфраструктура, аэродромы, порты. Согласно поправкам, в перечень будут добавлены объекты энергетической инфраструктуры, магистральные газопроводы, нефтепроводы, строящиеся по комплексному плану расширения магистральной инфраструктуры, промышленные объекты, обеспечивающие создание импортозамещающих технологий, внедрение ресурсосберегающих технологий, производства продукции, не имеющей российских аналогов, а также строящиеся с привлечением средств бюджета школы, детские сады, больницы, если в регионе не хватает таких объектов.</br></br>В новой редакции документа есть улучшения, вводятся ограничения, не позволяющие, к примеру, построить в охранной зоне горнолыжный курорт, говорит эксперт по ООПТ Greenpeace Михаил Крейндлин.  Однако перечень объектов, разрешенных к строительству, все еще можно трактовать широко. В частности, если в федеральном заказнике не предусмотрен прямой запрет на строительство линейных сооружений, через заказник можно будет построить нефтепровод без проведения экологической экспертизы, объяснил эксперт. Он отметил, что линейные объекты, такие как нефтепроводы и газопроводы,  наиболее опасны для охранных зон, так как они разрушают ландшафт и нарушают пути миграции животных.', 'Photogenica-PHX72511999.jpg', 'Герасимов Андрей', '18.04.2022 23:35', 12),
(2, 'Новости рынка', 'В центре Екатеринбурга сносят конструктивистское здание', 'В Екатеринбурге стартовал снос бывшего общежития молокозавода на Азина, 18. Техника начала рушить здание в стиле конструктивизма утром в воскресенье, 17 апреля, сообщает 66.RU.</br></br>Постройку возвели в 1934 году по проекту архитектора Иосифа Жалмана. В последние годы оно находилось в аварийном состоянии. Здание пережило несколько пожаров. При этом в 2020 году на нем появилась табличка о скорой реконструкции объекта. В мэрии Екатеринбурга уточнили, что она поддельная.</br></br>«Снос здания на Азина,18 будет осуществлен по решению Ленинского суда Екатеринбурга по иску прокуратуры города с связи с его аварийным состоянием. Табличка о необходимости его сохранения на здании появилась по инициативе общественности. Администрация города ее не устанавливала», — заявили в пресс-службе мэрии.</br></br>Отметим, что конкурс на снос конструктивистского здания на Азина, 18 мэрия Екатеринбурга объявила в марте. Стоимость работ оценили в 6 млн рублей.</br></br></br>Фото: «Коренной екатеринбуржец» / telegram', 'photo_2020-02-04_17-31-30.jpg', 'Герасимов Андрей', '19.04.2022 02:05', 10),
(3, 'Новости рынка', 'В Петербурге ради гостиницы снесут торговый центр «Призма»', 'В Санкт-Петербурге снесут торговый комплекс «Призма», расположенный на улице Бутлерова. На освобожденном земельном участке построят 13-этажную гостиницу, сообщает «Деловой Петербург».</br></br>Облик новой постройки уже согласовал комитет по градостроительству и архитектуре администрации Северной столицы. Согласно документации, ее возведут прямо на месте торгового комплекса. При этом участники рынка склоняются к тому, что собственник участка построит не гостиницу, а апарт-отель.</br></br>«Больше похоже, конечно, на апартаменты, чем на гостиницу. Гостиницу так обычно не выстраивают», — заявил вице-президент Российской гостиничной ассоциации Алексей Мусакин.</br></br>Отметим, что торговый комплекс «Призма» несколько раз выставляли на продажу. За него хотели выручить 630 млн рублей. Однако объявление было снято с продажи.', 'Bz2LBQcmOZh334stC9XVq4PeP2Shnv14uHpZBqvYz3wlV0FzER2IsGlk0RjEYzWCvt6hRI0f.jpg', 'Герасимов Андрей', '19.04.2022 02:35', 95),
(4, 'Новости рынка', '«А101» и ВТБ предложили льготную ипотеку со ставкой от 8,7%', 'Банк ВТБ совместно с застройщиком «А101» запустили комбинированную ипотечную программу со сниженной ставкой от 8,7% годовых, сообщили в строительной компании. Программа объединяет льготную ипотеку с господдержкой и субсидии от девелопера.</br></br>Программа действует только в отдельных жилых комплексах. Это ЖК «Прокшино», «Испанские кварталы», «Белые ночи», «Скандинавия».</br></br>Согласно условиям программы, максимальный размер ипотечного кредита должен быть не выше 12 млн рублей. Минимальный размер первоначального взноса составляет 15%. Жилищный кредит можно получить на срок до 30 лет.', '392465.jpg', 'Герасимов Андрей', '19.04.2022 20:14', 3),
(5, 'Новости компании', 'ЖК с самыми низкими ипотечными ставками от застройщиков от 0,01%', 'После того как в конце февраля Центробанк поднял ключевую ставку до 20% годовых, ипотека оказалась недоступной для многих россиян. В результате уже в марте сорвалась часть сделок, а застройщикам стало гораздо сложнее продавать квартиры в новых жилых комплексах.</br></br>С 1 апреля правительство обновило условия льготной ипотечной программы с господдержкой, чтобы поддержать рынок: ставка по ней увеличилась до 12% (вместо 7% ранее), но и лимит на покупку московской или подмосковной квартиры тоже увеличился до 12 млн рублей. Кроме того, власти сохранили ставку по льготной программе семейной ипотеки на прежнем уровне — до 6%.', 'mortgage.jpg', 'Герасимов Андрей', '19.04.2022 22:40', 7),
(6, 'Партнерские проекты', 'Современные планировки: что должно быть в вашей новой квартире бизнес-класса?', 'Покупатели жилья бизнес-класса очень разные. Кто-то привык жить один, но ему важна просторная спальня и гардеробная, у кого-то большая семья и в новой квартире должно найтись место каждому, а кто-то — человек творческий, в этом случае не обойтись без пространства для мастерской. Влюбленные пары без детей, родитель и взрослый ребенок, гостеприимная семья, часто принимающая у себя друзей из других городов — моделей семей очень много, и под каждую из них должна найтись своя планировка.</br></br>Тщательно выбирать планировку нужно, чтобы будущее пространство было максимально подходящим именно вам и вашей семье, отвечало образу жизни и потребностям. На что надо обращать внимание? Скажем, в домах, построенных в советское время, комнаты были прямоугольными, вытянутыми в длину. Современный тренд — застройщики чаще делают квадратные помещения. Это обеспечивает квартире равномерное распределения света, она воспринимается более просторной и легкой, чем квартира с прямоугольными комнатами. К тому же такое пространство легче зонировать в зависимости от индивидуальных потребностей жильцов, оно предоставляет больше возможностей для расстановки мебели.</br></br>В ГК ФСК рассказывают, что уделяют планировочным решениям в проектах бизнес-класса особое внимание. Например, в ЖК Sydney City 59 видов планировок, в ЖК «Роттердам» — 60, а в ЖК «Архитектор» — 64.</br></br>В каждой из планировок до мелочей продуман каждый метр — будь то студия или двухуровневый лот. А еще есть квартиры с нишами, специальными помещениями, террасами и другими особенностями, которые очень важны для покупателей. Все квартиры бизнес-класса — евроформата.', '1_1_6xCM4XA.jpg', 'Герасимов Андрей', '19.04.2022 22:11', 1),
(7, 'Партнерские проекты', 'Семь признаков премиального жилья, которые теперь есть и в бизнес-классе', 'Удачное местоположение — один из главных параметров, отличающих премиальный класс жилья от более низких сегментов. Красивые виды из окна, хорошая транспортная доступность, метро в нескольких минутах, близость лучших ресторанов и театров — обычно подобные ЖК располагаются в самом центре города, где сейчас крайне трудно найти свободную площадку.</br></br>В случае с бизнес-классом такие проекты возводятся в новых районах современной застройки: на Петровском острове, в Приморском или Московском районах города. Близость исторического центра и хорошая транспортная доступность делают эти места популярными у покупателей, которые ценят время и статус.</br></br>Московский район стал престижным не вчера. Еще в советские годы Московский проспект называли «вторым Невским», соединяющим центр города с аэропортом «Пулково». Строгая монументальная историческая застройка, широкие улицы и парки привлекают сюда девелоперов, чьи проекты способны вписаться в стилистику этого старого района.</br></br>ЖК «е.волюция» строится на пересечении Московского и Лиговского проспектов, в двух минутах ходьбы от станции метро «Московские ворота». Именно сюда, на историческую застройку и Триумфальные ворота, будут выходить окна квартир нового квартала.', '005_dcLS6YU.jpg', 'Герасимов Андрей', '19.04.2022 23:29', 7),
(8, 'Новости рынка', 'На Дальнем Востоке и в Арктике планируют запустить новую льготную ипотеку на ИЖС', 'На Дальнем Востоке и в Арктике могут запустить льготную ипотечную программу, позволяющую на кредитные средства построить индивидуальное жилье собственными силами, сообщает «Интерфакс». О таких планах рассказал замминистра строительства и ЖКХ РФ Никита Стасишин.</br></br>Замминистра отметил, что оформить ипотеку на ИЖС на Дальнем Востоке и в Арктике можно и сейчас, но программа распространяется только на индивидуальное жилье, которое  возводится строительными компаниями индустриальным способом. Оформить ипотеку на строительство индивидуального дома хозяйственным способом, то есть собственными силами, практически невозможно. Граждане, которые хотят построить дом своими силами, могут оформить только потребительский кредит. Сегодня, с учетом уровня ключевой ставки ЦБ ставки по таким кредитам очень высокие.</br></br>По словам Стасишина, программа льготной ипотеки на ИЖС будет подготовлена в течение пары месяцев, после чего начнется ее реализация.</br></br>Замминистра также рассказал, что Минстрой совместно с «Дом.РФ» подготовил реестр проектов индивидуального жилищного строительства. Это позволит банкам определять себестоимость и ориентировочные сроки строительства при выдаче ипотечных займов на ИЖС.', 'shutterstock_326838344.jpg', 'Герасимов Андрей', '20.04.2022 00:18', 11);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `position`, `photo`, `phone`, `email`, `password`, `balance`) VALUES
(1, 'Андрей', 'Герасимов', 3, 'andrey.jpg', '+79521968636', 'andrey.gerasimov2506@gmail.com', '4baf7266e6f63fc7b123a83ce2dd587c', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `apartments`
--
ALTER TABLE `apartments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `apartments`
--
ALTER TABLE `apartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
