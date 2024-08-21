/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80034
 Source Host           : localhost:3306
 Source Schema         : poetize

 Target Server Type    : MySQL
 Target Server Version : 80034
 File Encoding         : 65001

 Date: 15/08/2024 15:19:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int NOT NULL COMMENT '用户ID',
  `sort_id` int NOT NULL COMMENT '分类ID',
  `label_id` int NOT NULL COMMENT '标签ID',
  `article_cover` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '封面',
  `article_title` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '博文标题',
  `article_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '博文内容',
  `video_url` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '视频链接',
  `view_count` int NOT NULL DEFAULT 0 COMMENT '浏览量',
  `like_count` int NOT NULL DEFAULT 0 COMMENT '点赞数',
  `view_status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否可见[0:否，1:是]',
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `tips` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '提示',
  `recommend_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否推荐[0:否，1:是]',
  `comment_status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否启用评论[0:否，1:是]',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最终修改时间',
  `update_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '最终修改人',
  `deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否启用[0:未删除，1:已删除]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '文章表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, 1, 1, 1, 'https://picture.jiaming-blog.top/wallpaper/17.jpg', 'Python', '\n# 第一章 变量和简单的数据类型\n## 1.1 字符串\n1. 修改字符串的大小写\n```python\n变量名.title( ) # 首字母大写，其他为小写\n变量名.lower( ) # 全部小写\n变量名.upper() # 全大写\n```\n2. 字符串的拼接\n```python\nf\"字符串 {变量名} {变量名}\"\n```\n3. 删除空白\n```python\n变量名.rstrip() # 删除右侧空白\n变量名.lstrip() # 删除左侧空白\n变量名.strip()   # 删除两侧空白\n```\n4. 删除前缀\n```python\n变量名.removeprefix(前缀)\n```\n\n## 1.2 数\n1. 数中的下划线\n```python\nuniverse_age=14_000_000 # 14000000\n```\n2. 同时给多个变量赋值\n```python\na,b=10,20\n```\n\n# 第二章 列表简介\n## 2.1 修改、添加和删除元素\n1. 修改\n   ```python\n   列表名[索引] = 元素\n   ```\n2. 添加\n   ```python\n   列表名.append(元素) # 添加到列表末尾\n   列表名.insert(索引,元素) # 在指定位置添加元素\n   列表名 += [元素1,元素2] # 添加多个元素\n   ```\n3. 删除\n   ```python\n   del 列表名[索引] # 删除指定位置元素\n   列表名.pop(索引) # 删除指定位置元素,并返回被删除的元素\n   列表名.remove(元素) # 删除第一个出现的指定元素\n   ```\n\n## 2.2 管理列表\n1. 使用sort()方法对列表进行永久排序\n   ```python\n   列表名.sort( ) # 按字母顺序从小到大排序\n   列表名.sort(reverse=True) # 按字母顺序从大到小排序\n   ```\n2. 使用sorted()函数对列表进行临时排序\n   ```python\n   sorted(列表名) # 按字母顺序从小到大排序\n   ```\n3. 列表反转\n   ```python\n   列表名.reverse()\n   ```\n4. 确定指定元素的个数、列表长度\n   ```python\n   列表名.count(元素) # 返回指定元素的个数\n   len(列表名) # 返回列表长度\n   ```\n\n# 第三章 操作列表\n## 3.1 遍历整个列表\n1. 遍历列表\n   ```python\n   for 变量名 in 列表名:\n     print(变量名)\n    ```\n\n## 3.2创建数值列表\n1. 使用range( )函数\n   ```python\n   # 创建1-5的列表\n   for value in range(1,5):\n    print(value)\n    ```\n2. 使用range()创建数值列表\n   ```python\n    numbers = list(range(1,6))\n    print(numbers)\n   # range()函数还可以指定步长\n    even_numbers = list(range(1,6,2)) # 从1开始，到5结止，步长为2\n    print(even_numbers)\n    # 创建一个列表，包含前10个整数的平方\n    squares = []\n    for value in range(1, 10):\n        squares.append(value ** 2)\n    print(squares)\n    ```\n3. 对数值列表执行简单的统计计算\n   ```python\n    digits = [1,2,3,4,5,6,7,8,9]\n    print(min(digits), max(digits), sum(digits))\n    ```\n4. 列表推导式\n   ```python\n   列表名 = [表达式 for 变量 in 列表名 if 条件]\n   # 例子：生成一列数字的平方\n    squares = [x**2 for x in range(1, 10)]\n    print(squares)\n    # 例子：生成所包含数字的平方和大于100的数字的列表\n    greater_than_100 = [x for x in range(1, 20) if x**2 > 100]\n    print(greater_than_100)\n   ```\n\n## 3.3 使用列表的一部分\n1. 切片\n   ```python\n   players = [\'charles\',\'martina\',\'michael\',\'florence\',\'eli\']\n   print(players[0:3]) # 0 to 2\n   print(players[1:4]) # 1 to 3\n   print(players[:4]) # 0 to 3\n   print(players[2:]) # 2 to end\n   print(players[-3:]) #last 3\n   print(players[1:4:2]) # 1 to 3, every other one\n   ```\n2. 遍历切片\n   ```python\n   players = [\'charles\',\'martina\',\'michael\',\'florence\',\'eli\']\n   print(\"Here are the first three aplayers on my team:\")\n   for player in players[:3]:\n      print(player.title())\n   ```\n3. 复制列表\n{% tip warning %}复制列表时，只是创建了新列表的引用，而不是创建副本{% endtip %}\n   ```python\n   my_food = [\'pizza\',\'falafel\', \'carrot coke\']\n   friend_food = my_food[:]\n   print(my_food)\n   print(friend_food)\n   ```\n\n## 3.4元组\n{% tip warning %}元组是不能修改元素的列表，但可以重新赋值{% endtip %}\n\n# 第四章 if语句\n## 4.1 if语句\n1. 简单的if语句\n   ```python\n   if 条件:\n      代码块\n   ```\n2. if-else语句\n   ```python\n   if 条件1:\n      代码块1\n   elif 条件2:\n      代码块2\n   ```\n3. if-elif-else语句\n   ```python\n   if 条件1:\n      代码块1\n   elif 条件2:\n      代码块2\n   else:\n      代码块3\n   ```\n4. 使用多个elif代码块\n   ```python\n    if 条件1:\n      代码块1\n   elif 条件2:\n      代码块2\n   elif 条件3:\n      代码块3\n   else:\n      代码块4\n   ```\n\n## 4.2 使用if语句处理列表\n1. 检查特殊元素\n   ```python\n   request_toppings = [\'mushrooms\', \'green peppers\', \'extra cheese\']\n\n   for request_topping in request_toppings:\n      if request_topping == \'green peppers\':\n         print(\"Sorry,we are out of green peppers right now.\")\n      else:\n         print(f\"Adding {request_topping}.\")\n   print(\"\\nFinished making your pizza!\")   \n   ```\n\n2. 确定列表为空\n   ```python\n   request_toppings = []\n\n   if request_toppings:\n      for request_topping in request_toppings:\n          print(f\"Adding {request_topping}.\")\n      print(f\"\\nFinished making your pizza!\")\n   else:\n      print(\"Are you sure you want a plain pizza?\")\n      ```\n{% tip sync %}列表为空时返回`False`，不为空时返回`True`，{% endtip %}\n\n3. 使用多个列表\n```python\n# 列表一包含店内供应的配料，列表二包含顾客的请求，检查顾客的请求是否在店内供应的配料中，再决定是否在比萨中添加它。\navailable_toppings = [\'mushrooms\', \'olives\', \'green peppers\', \'pepperoni\', \'pineapple\', \'extra cheese\']\nrequest_toppings = [\'mushrooms\', \'french fires\', \'extra cheese\']\nfor request_topping in request_toppings:\n    if request_topping in available_toppings:\n        print(f\"Adding {request_topping}.\")\n    else :\n        print(f\"Sorry, we don\'t have {request_topping}.\")\n        \nprint(\"\\nFinished making your pizza!\")\n```\n\n# 第五章 字典\n## 5.1 一个简单的字典\n1. 创建字典\n```python\nalien_0 = {\'color\': \'green\', \'points\': 5}\n\nprint(alien_0[\'color\']) # 访问字典中的值\nprint(alien_0[\'points\'])\n```\n\n## 5.2 使用字典\n{% tip warning %}`字典`是一系列键值对，每个键都与一个值关联，可以使用键来访问与之关联的值。{% endtip %}\n{% tip sync %}与键相关联的值的类型可以是数字、字符串、列表乃至字典。{% endtip %}\n1. 访问字典中的值\n{% tip sync %}`[]`中放置的是键，而不是索引。{% endtip %}\n```python\nalien_0 = {\'color\': \'green\', \'points\': 5}\n\nnew_points = alien_0[\'points\']\nprint(f\"You just earned {new_points} points!\")\n```\n2. 添加键值对\n```python\nalien_0 = {\'color\': \'green\', \'points\': 5}\nprint(alien_0)\n\nalien_0[\'x_position\'] = 0\nalien_0[\'y_position\'] = 25\nprint(alien_0)\n```\n3. 从创建一个空字典开始\n```python\nalien_0 = {}\nalien_0[\'color\'] = \'green\'\nalien_0[\'points\'] = 5\nprint(alien_0)\n```\n4. 修改字典中的值\n```python\nalien_0 = {\'color\': \'green\'}\nprint(f\"The alien is {alien_0[\'color\']}\")\n\nalien_0[\'color\'] = \'yellow\'\nprint(f\"The alien is now {alien_0[\'color\']}\")\n```\n5. 删除键值对\n{% tip sync %}`del`语句可以删除字典中的键值对，也可以使用`pop()`方法删除键值对{% endtip %}\n```python\nalien_0 = {\'color\':\'green\',\'points\':5}\nprint(alien_0)\n\ndel alien_0[\'points\']\nprint(alien_0)\n```\n6. 由类似的对象组成字典\n```python\nfavorite_languages = {\n    \'jen\': \'python\',\n    \'sarah\': \'c\',\n    \'edward\': \'rust\',\n    \'phil\': \'python\',\n}\nlanguages = favorite_languages[\'sarah\'].title()\nprint(f\"Sarah\'s favorite language is {languages}\")\n```\n7. 使用get()来访问值\n{% tip sync %}`get()`方法返回与键相关联的值，如果字典中没有指定的键，则返回`None`或指定值。{% endtip %}\n```python\nalien_0 = {\'color\': \'green\', \'speed\': \'slow\'}\npoint_value = alien_0.get(\'points\', \'No point value assigned.\')\nprint(point_value)\n```\n\n## 5.3 遍历字典\n1. 遍历所有的键值对\n{% tip sync %}`items()`方法返回一个包含字典中所有键值对的列表，每个键值对用两个元素表示。{% endtip %}\n```python\nuser_0 = {\n   \'username\': \'efermi\',\n   \'first\': \'enrico\',\n   \'last\': \'fermi\',\n}\nfor key,value in user_0.items():\n   print(f\"\\nKey: {key}\")\n   print(f\"Value: {value}\")\n```\n2. 遍历字典所有的键\n{% tip sync %}`keys()`方法返回一个包含字典中所有键的列表。{% endtip %}\n```python\nfavorite_languages = {\n   \'jen\': \'python\',\n   \'sarah\': \'c\',\n   \'edward\': \'ruby\',\n   \'phil\': \'python\',\n}\nfor name in favorite_languages.keys():\n   print(name.title())\n```\n3. 按特定的顺序遍历字典中的所有键\n{% tip sync %}使用sorted()函数来获得按特定顺序排列的键列表的副本{% endtip %}\n```python\nfavorite_languages = {\n    \'jen\': \'python\',\n    \'sarah\': \'c\',\n    \'edward\': \'rust\',\n    \'phil\': \'python\',\n}\n\nfor name in sorted(favorite_languages.keys()):\n   print(f\"{name.title()}, thank you for taking the poil.\")\n```\n4. 遍历字典中的所有值\n{% tip sync %}`values()`方法返回一个包含字典中所有值的列表。{% endtip %}\n```python\nfavorite_languages = {\n    \'jen\': \'python\',\n    \'sarah\': \'c\',\n    \'edward\': \'rust\',\n    \'phil\': \'python\',\n}\n\nprint(\"The following languages have been mentioned:\")\nfor language in favorite_languages.values():\n   print(language.title())\n```\n{% tip waring %}剔除重复项，可使用集合(set) 。集合中的每个元素都必须是独一无二的。{% endtip %}\n```python\nfavorite_languages = {\n    \'jen\': \'python\',\n    \'sarah\': \'c\',\n    \'edward\': \'rust\',\n    \'phil\': \'python\',\n}\n\nprint(\"The following languages have been mentioned:\")\nfor language in set(favorite_languages.values()):\n   print(language.title())\n```\n> 可以使用一对花括号直接创建集合(`不重复的元素`)，并在其中用逗号分隔元素：\n```python\nlanguages = {\'python\', \'rust\', \'python\', \'c\'}\nprint(languages)\n```\n{% tip waring %}集合和字典很容易混淆，因为它们都是一对花括号定义的。当花括号没有键值对时，定义的很可能是集合。不同于列表和字典，集合不会以特定的顺序存储元素。{% endtip %}\n\n## 5.4 嵌套\n1. 字典列表\n{% tabs 字典 %}\n<!-- tab 示例 -->\n```python\nalien_0 = {\'color\': \'green\', \'points\': 5}\nalien_1 = {\'color\': \'yellow\', \'points\': 10}\nalien_2 = {\'color\': \'red\', \'points\': 15}\n\naliens = [alien_0, alien_1, alien_2]\nfor alien in aliens:\n   print(alien)\n```\n<!-- endtab -->\n\n<!-- tab 使用range()生成30个外星人 -->\n```python\naliens = []\nfor alien_number in range(30):\n    new_alien = {\'color\': \'green\', \'points\': 5, \'speed\': \'slow\'}\n    aliens.append(new_alien)\nfor alien in aliens[:5]:\n    print(alien)\nprint(\"```\")\n\nprint(f\"Total number of aliens: {len(aliens)}\")\n```\n<!-- endtab -->\n\n<!-- tab 修改前三个外星人属性 -->\n```python\naliens = []\nfor alien_number in range(30):\n    new_alien = {\'color\': \'green\', \'points\': 5, \'speed\': \'slow\'}\n    aliens.append(new_alien)\nfor alien in aliens[:5]:\n    print(alien)\nprint(\"```\")\n\nprint(f\"Total number of aliens: {len(aliens)}\")\n\nfor alien in aliens[:3]:\n    if alien[\'color\'] == \'green\':\n        alien[\'color\'] = \'yellow\'\n        alien[\'speed\'] = \'medium\'\n        alien[\'points\'] = 10\n        \nfor alien in aliens[:5]:\n    print(alien)\n```\n<!-- endtab -->\n{% endtabs %}\n\n2. 在字典中存储列表\n{% tabs 字典列表 %}\n<!-- tab 示例 -->\n```python\npizza = {\n    \'crust\': \'thick\',\n    \'toppings\': [\'mushrooms\',\'extra cheese\'],\n}\n\nprint(f\"You ordered a {pizza[\'crust\']}-crust pizza\" \" with the following toppings:\")\n\nfor topping in pizza[\'toppings\']:\n    print(f\"\\t{topping}\")\n```\n<!-- endtab -->\n\n<!-- tab 循环遍历 -->\n```python\nfavorite_languages = {\n    \'jen\': [\'python\',\'rust\'],\n    \'sarah\': [\'c\'],\n    \'edward\': [\'rust\',\'c\'],\n    \'phil\': [\'python\', \'haskell\'],\n}\n\nfor name,languages in favorite_languages.items():\n    if len(languages)!=1:\n        print(f\"\\n{name.title()}\'s favorite languages are:\")\n        for language in languages:\n            print(f\"\\t{language.title()}\")\n    else:\n        print(f\"\\n{name.title()}\'s favorite language is:\")\n        for language in languages:\n            print(f\"\\t{language.title()}\") \n```\n<!-- endtab-->\n{% endtabs %}\n3. 在字典中存储字典\n```python\nusers = {\n    \'aeinstein\':{\n        \'first\':\'albert\',\n        \'last\':\'einstein\',\n        \'location\':\'princeton\',\n    },\n    \'mcurie\':{\n        \'first\':\'marie\',\n        \'last\':\'curie\',\n        \'location\':\'paris\',\n    },\n}\n\nfor username,user_info in users.items():\n    print(f\"\\nusername:{username}\")\n    full_name = f\"{user_info[\'first\']} {user_info[\'last\']}\"\n    location = user_info[\'location\']\n    \n    print(f\"\\tFull name: {full_name.title()}\")\n    print(f\"\\tLocation: {location.title()}\")\n```\n\n# 第六章 用户输入和while循环\n## 6.1 input()函数的工作原理\n{% tip success %}\n```python\nmessage = input(\"Tell me something ,and I will repeat it back to you :\")\nprint(message)\n```\n{% endtip %}\n1. 编写清晰的提示\n```python\nname = input(\"Please enter your name:\")\nprint(f\"\\nHello,{name}!\")\n```\n{% tip waring %}运算符`+=`在赋给变量时在追加一个字符串{% endtip %}\n2. 使用int()来获取数值输入\n{% tip waring %}使用input()函数时，Python会将用户输入解读为字符串，可以使用`int()`将输入的字符串转换为数值{% endtip %}\n```python\nheight = input(\"How tall are you,in inches？\")\nheight = int (height)\nif height >= 48:\n   print(\"\\nYou\'re tall enough to ride!\")\nelse:\n   print(\"\\nYou\'ll be able to ride when you\'re a little older.\")\n```\n3. 求模运算符\n{% tip success %}`求模运算符(%)`可以将两个数相除并返回余数{% endtip %}\n{% span green, 判断是奇数还是偶数 %}\n```python\nnumber = input(\"Enter a number,and I\'ll tell you if it\'s even or odd:\")\nnumber = int(number)\n\nif number % 2 == 0:\n   print(f\"\\nThe number {number} is even.\")\nelse:\n   print(f\"\\nThe number {number} is odd.\")\n```\n\n## 6.2 while循环简介\n{% tip waring %}`for循环`用于针对集合中的每个元素执行一个代码块，而`while循环`则不断进行直到指定的条件不再满足为止。{% endtip %}\n1. 使用while循环\n```python\ncurrent_number = 1\nwhile current_number <= 5:\n   print(current_number)\n   current_number += 1\n```\n2. 让用户选择何时退出\n```python\nprompt = \"\\nTell me something,and I\'ll repeat it back to you:\"\nprompt += \"\\nEnter \'quit\' to end the program.\"\n\nmessage = \"\"\nwhile message != \'quit\':\n   message = input(prompt)\n   if message != \'quit\':\n      print(message)\n```\n3. 使用标志\n{% tip success %}标志变量通常被初始化为`True`,然后程序运行时，在条件为真时将其设置为`False`{% endtip %}\n```python\nprompt = \"\\nTell me something,and I\'ll repeat it back to you:\"\nprompt += \"\\nEnter \'quit\' to end the program.\"\nactive = True\n\nwhile active:\n    message = input(prompt)\n    if message == \'quit\':\n        active = False\n    else:\n        print(message)\n```\n4. 使用`break`退出循环\n```python\nprompt = \"\\nTell enter the name of a city you have visited:\"\nprompt += \"\\n(Enter \'quit\' when you are finished.)\"\n\nwhile True:\n   city = input(prompt)\n\n   if city == \'quit\':\n      break\n   else:\n      print(f\"I\'d love to go to {city.title()}\")\n```\n{% tip sync %}在所有的Python循环中都可以使用`break`语句。例如，可使用break语句来退出遍历列表或字典的for循环。{% endtip %}\n5. 在循环中使用continue\n```python\ncurrent_number = 0\nwhile current_number < 10:\n   current_number += 1\n   if current_number % 2 == 0:\n      continue\n   else:\n      print(current_number)\n```\n6. 避免无限循环\n{% tip warning faa-horizontal animated faa-fast %}结束无限循环，可在输出区域中单击鼠标，再按{% kbd CTRL %} + {% kbd C %}{% endtip %}\n\n## 6.3 使用while循环处理列表和字典\n1. 在列表之间移动元素\n```python\nunconfirmed_users = [\'alice\', \'brian\', \'candace\']\nconfirmed_users = []\n\nwhile unconfirmed_users:\n   current_user = unconfirmed_users.pop()\n   print(f\"Verifying user: {current_user.title()}\")\n   confirmed_users.append(current_user)\nprint(\"\\nThe  following users have benn confirmed:\")\nfor confirmed_user in confirmed_users:\n   print(confirmed_user.title())\n```\n2. 删除为特定值得所有列表元素\n```python\npets = [\'dog\', \'cat\', \'dog\', \'goldfish\', \'cat\', \'rabbit\', \'cat\']\nprint(pets)\nwhile \'cat\' in pets:\n   pets.remove(\'cat\')\n\nprint(pets)\n```\n3. 使用用户输入填充字典\n```python\nresponses = {}\npolling_active = True\n\nwhile polling_active:\n   name = input(\"\\nWhat is your name?\")\n   response = input(\"Which mountain would you like to climb someday?\")\n\n   responses[name] = response\n\n   repeat = input(\"Would you like to let another person respond?(yes/no)\")\n   if repeat.lower() == \'no\':\n      polling_active = False\n\nprint(\"\\n--- Poll Results ---\")\nfor name,response in responses.items():\n   print(f\"{name} would like to climb {response}\")\n```\n\n# 第七章 函数\n## 7.1 定义函数\n```python\ndef greet_user():\n   print(\"Hello!\")\n\ngreet_user()\n```\n1. 向函数传递信息\n```python\ndef greet_user(username):\n   print(f\"Hello, {username.title()}!\")\n\ngreet_user(\'jiaming\')\n```\n2. 实参和形参\n**上述例子中`uesrname`为形参，`jiaming`为实参**\n\n## 7.2 传递实参\n1. 位置实参\n```python\ndef describe_pet(animal_type, pet_name):\n   print(f\"\\nI have a {animal_type}.\")\n   print(f\"My {animal_type}\'s name is {pet_name.title()}.\")\n\ndescribe_pet(\'hamster\', \'harry\')\n```\n{% tip sync %}\n1. 调用函数多次\n2. 位置实参的顺序很重要\n{% endtip %}\n\n2. 关键字实参\n**`关键字实参不仅让你无需考虑函数调用中的实参顺序，而且清楚的指出了函数调用中的各个值得用途`**\n```python\ndef describe_pet(animal_type, pet_name):\n   print(f\"\\nI have a {animal_type}.\")\n   print(f\"My {animal_type}\'s name is {pet_name.title()}.\")\n\ndescribe_pet(animal_type = \'hamster\', pet_name = \'harry\')\n```\n>  在使用关键字实参时，务必准确的指定函数定义中的形参名。\n\n3. 默认值\n>  编写函数时，可以给每个形参指定`默认值`\n```python\ndef describe_pet(pet_name, animal_type = \'dog\'):\n   print(f\"\\nI have a {animal_type}.\")\n   print(f\"My {animal_type}\'s name is {pet_name.title()}.\")\n\ndescribe_pet(pet_name = \'willie\')\n```\n{% tip sync %}当使用默认值时，必须在形参列表中先列出没有默认值的形参，再列出所有默认值的形参。{% endtip %}\n\n4. 等效的函数调用\n```python\ndef describe_pet(pet_name, animal_type=\'dog\'):\n# 一条名为Willie的小狗\ndescribe_pet(\'willie\')\ndescribe_pet(pet_name=\'willie\')\n\n# 一只名为Harry的仓鼠\ndescribe_pet(\'harry\', \'hamster\')\ndescribe_pet(animal_type=\'hamster\', pet_name=\'harry\')\ndescribe_pet(pet_name=\'harry\', animal_type=\'hamster\')\n```\n5. 避免实参错误\n**`确保函数调用和函数定义匹配`**\n\n## 7.3 返回值\n{% tip success %}函数返回的值称为返回值{% endtip %}\n1. 返回简单的值\n```python\ndef get_formatted_name(first_name, last_name):\n   full_name = f\"{first_name} {last_name}\"\n   return full_name.title()\n\nmusician = get_formatted_name(\'jimi\', \'hendrix\')\nprint(musician)\n```\n2. 让实参变成可选的\n```python\ndef get_formatted_name(first_name, last_name， middle_name=\'\'):\n   if middle_name:\n      full_name = f\"{first_name}  {middel_name} {last_name}\"\n   else:\n      full_name = f\"{first_name}  {last_name}\"\n      \n   return full_name.title()\n\n\nmusician = get_formatted_name(\'jimi\', \'hendrix\')\nprint(musician)\nmisician = get_formatted_name(\'john\', \'hooker\', \'lee\')\nprint(misician)\n```\n3. 返回字典\n{% tabs 返回字典 %}\n<!-- tab 示例 -->\n```python\ndef build_person(first_name, last_name):\n   person = {\'first\': first_name,\'last\': last_name}\n   return person\n\nmusician = build_person(\'jimi\', \'hendrix\')\nprint(musician)\n```\n<!-- endtab -->\n\n<!-- tab 存储其他信息 -->\n```python\ndef build_person(first_name, last_name, age=None):\n   person = {\'first\': first_name,\'last\': last_name}\n   if age:\n      person[\'age\'] = age\n   return person\n\nmusician = build_person(\'jimi\', \'hendrix\',age=27)\nprint(musician)\n```\n<!-- endtab -->\n{% endtabs %}\n\n4. 结合使用函数和while循环\n```python\ndef get_formatted_name(first_name, last_name):\n   full_name = f\"{first_name} {last_name}\"\n   return full_name.title()\n\nwhile True:\n   print(\"\\nPlease tell me your name:\")\n   print(\"(Enter \'q\' at any time to quit)\")\n   f_name = input(\"First name: \")\n   if f_name==\'q\':\n      break\n   l_name = input(\"Last name: \")\n   if l_name==\'q\':\n      break\n\n   formatted_name = get_formatted_name(f_name, l_name)\n   print(f\"\\nHello,{formatted_name}\")\n```\n\n## 7.4 传递列表\n```python\ndef greet_users(names):\n   for name in names:\n      msg = f\"Hello, {name.title()}!\"\n      print(msg)\nusernames = [\'hannah\', \'ty\', \'margot\']\ngreet_users(usernames)\n```\n1. 在函数中修改列表\n{% tabs 返回字典 %}\n<!-- tab 非函数示例 -->\n```Python\n# 首先创建一个列表，其中包含一些要打印的设计\nunprinted_designs = [\'phone case\', \'robot pendant\', \'dodecahedrom\']\ncompleted_models = []\n\n# 模拟打印每个设计，直到没有来打印的设计为止\n# 打印每个设计后，都将其移到列表completed_models中\nwhile unprinted_designs:\n   current_design = unprinted_designs.pop()\n   print(f\"Printing model: {current_design}\")\n   completed_models.append(current_design)\n\n# 显示打印好的所有模型\nprint(\"\\nThe following models have been printed:\")\nfor completed_model in completed_models:\n   print(completed_model)\n```\n<!-- endtab--> \n\n<!-- tab 函数示例 -->\n```python\ndef print_models(unprinted_designs, completed_models):\n   while unprinted_designs:\n      current_design = unprinted_designs.pop()\n      print(f\"Printing model: {current_design}\")\n      completed_models.append(current_design)\n\ndef show_completed_models(completed_models):\n   print(\"\\nThe following models have been printed:\")\n   for completed_model in completed_models:\n      print(completed_model)\n\nunprinted_designs = [\'phone case\', \'robot pendant\', \'dodecahedrom\']\ncompleted_models = []\n\nprint_models(unprinted_designs, completed_models)\nshow_completed_models(completed_models)\n```\n<!-- endtab -->\n{% endtabs %}\n2. 禁止函数修改列表\n> `要将列表的副本传递给函数，可以这样做:`\n```python\nfunction_name(list_name[:])\n```\n{% tip sync %}切片表示法`[:]`创建列表的副本，在上述示例中，如果不想清空未打印的设计列表，可像下面这样调用print_models():\n```python\nprint_models(unprinted_designs[:], completed_models)\n```\n{% endtip %}\n\n## 7.5 传递任意数量的实参\n{% tabs 传递任意数量的实参 %}\n<!-- tab 示例 -->\n```python\ndef make_pizza(*toppings):\n   print(toppings)\n\nmake_pizza(\'peperoni\')\nmake_pizza(\'mushrooms\', \'green pepepers\', \'extra cheese\')\n```\n<!-- endtab -->\n\n<!-- tab 遍历配料列表 -->\n```python\ndef make_pizza(*toppings):\n   print(\"\\nMaking a pizza with the following toppings:\")\n   for topping in toppings:\n      print(f\"- {topping}\")\n\nmake_pizza(\'pepperoin\')\nmake_pizza(\'mushrooms\', \'green peppers\', \'extra cheese\')\n```\n<!-- endtab -->\n{% endtabs %}\n{% tip waring %}形参名中`*toppings`中的星号让python创建一个名为toppings的元组，该元组包含函数收到的所有值。{% endtip %}\n1. 结合使用位置实参和任意数量的实参\n{% tip waring %}如果要让函数接收不同类型的实参，必须在函数定义中将接受任意数量实参的形参放在最后。Python先匹配`位置实参`和`关键字实参`，再将余下的实参都收集到最后一个形参中。{% endtip %}\n```python\ndef make_pizza(size, *toppings):\n   print(f\"\\nMaking a {size}-inch pizza with the following toppings:\")\n   for topping in toppings:\n      print(f\"- {topping}\")\n\nmake_pizza(16, \'pepperoni\')\nmake_pizza(12,\'mushrooms\', \'green peppers\', \'extra cheese\')\n```\n{% tip success %}会经常看到通用形参名`*args`，它也这样收集任意数量的位置实参。{% endtip %}\n2. 使用任意数量的关键字实参\n```python\ndef build_profile(first, last, **user_info):\n   # 创建一个字典，其中包括我们知道的有关用户的一切\n   user_info[\'first_name\'] = first\n   user_info[\'last_name\'] = last\n   return user_info\n\nuser_profile = build_profile(\'albert\', \'einstein\', location = \'princeton\', field=\'physics\')\nprint(user_profile)\n```\n{% tip waring %}形参名`**user_info`中的两个星号让Python创建一个名为user_info的字典，该字典包含函数收到的其他所有名值对。{% endtip %}\n{% tip success %}会经常看到名为`**kwargs`的形参，它用于收集任意数量的关键字实参。{% endtip %}\n\n## 7.6 将函数存储在模块中\n1. 导入整个模块\n{% tip sync %}要让函数是可导入的，得先创建模块。`模块`是扩展名`.py`文件，包含要导入程序的代码。{% endtip %}\n{% span green,创建一个包含make_pizza()函数的模块 %}\n```python\ndef make_pizza(size, *toppings):\n   print(f\"\\nMaking a {size}-inch pizza with the following topping:\")\n   for topping in toppings:\n      print(f\"- {topping}\")\n```\n{% span green,在同一目录下创建.py文件再导入刚刚创建的模块 %}\n```python\nimport make_pizza\n\npizza.make_pizza(16,\'pepperoni\')\n```\n{% tip success %}调用被导入模块中的函数，可指定被导入模块的`名称`和`函数名`，并用句点隔开{% endtip %}\n{% tip waring %}导入整个模块，使用`import module_name`语句。{% endtip %}\n2. 导入特定的函数\n{% tip sync %}如果只想导入一个特定的函数，可使用`from module_name import function_name`语句。(用逗号分隔函数名){% endtip %}\n```python\nfrom pizza import make_pizza\n\nmake_pizza(16,\'pepperoni\')\n```\n{% tip waring %}如果使用这种语法，在调用函数时则无需使用句点，由于在`import`语句中显示的导入了函数，因此在调用时无需指定其名称即可{% endtip %}\n3. 使用as给函数指定别名\n{% tip sync %}如果不想使用函数原本的名称，或名称可能与变量名冲突，可使用`as`关键字给函数指定别名。{% endtip %}\n```python\nfrom pizza import make_pizza as mp\n\nmp(16,\'pepperoni\')\n```\n{% tip waring %}使用as给函数指定别名，在调用函数时，必须使用别名。{% endtip %}\n4. 使用as给模块指定别名\n{% tip sync %}如果不想使用模块原本的名称，或名称可能与变量名冲突，可使用`as`关键字给模块指定别名。{% endtip %}\n```python\nimport pizza as p\n\np.make_pizza(16,\'pepperoni\')\n```\n5. 导入模块中的所有函数\n{% tip sync %}如果想要导入模块中的所有函数，可使用`*`通配符。{% endtip %}\n```python\nfrom pizza import *\n\nmake_pizza(16,\'pepperoni\')\n```\n\n\n# 第八章 类\n## 8.1 创建和使用类\n1. 创建Dog类\n```python\nclass Dog:\n   # 一次模拟小狗的简单尝试\n   def __init__(self,name,age):\n      # 初始化属性name和age\n      self.name = name\n      self.age = age\n   \n   def sit(self):\n      # 模拟小狗收到命令时坐下\n      print(f\"{self.name} is now siting.\")\n   \n   def roll_over(self):\n      # 模拟小狗收到命令时打滚\n      print(f\"{self.name} rolled over!\")\n\n```\n{% tip waring %}\n1. 类定义由类名和一对圆括号组成。类名的命名规则与变量名相同，但`首字母大写`。\n2. 类定义内部是一系列类方法，它们与普通函数类似，但要使用`self`参数。\n3. 类方法的第一个参数必须是`self`，表示实例本身。{% endtip %}\n> `_init_()`是一种特殊方法，每当你根据Dog类创建新实例时，Python都会自动运行它。\n\n2. 根据类创建实例\n```python\nclass Dog:\n   # 一次模拟小狗的简单尝试\n   def __init__(self,name,age):\n      # 初始化属性name和age\n      self.name = name\n      self.age = age\n   \n   def sit(self):\n      # 模拟小狗收到命令时坐下\n      print(f\"{self.name} is now siting.\")\n   \n   def roll_over(self):\n      # 模拟小狗收到命令时打滚\n      print(f\"{self.name} rolled over!\")\n\nmy_dog = Dog(\'willie\',6)\n\nprint(f\"My dog\'s name is {my_dog.name}\")\nprint(f\"My dog is {my_dog.age} years old.\")\n```\n> 1. 访问属性\n```python\n类名.属性名\n```\n> 2. 调用方法\n```python\nclass Dog:\n   # 一次模拟小狗的简单尝试\n   def __init__(self,name,age):\n      # 初始化属性name和age\n      self.name = name\n      self.age = age\n   \n   def sit(self):\n      # 模拟小狗收到命令时坐下\n      print(f\"{self.name} is now siting.\")\n   \n   def roll_over(self):\n      # 模拟小狗收到命令时打滚\n      print(f\"{self.name} rolled over!\")\n\nmy_dog = Dog(\'willie\',6)\nmy_dog.sit()\nmy_dog.roll_over()\n```\n> 3. 创建多个实例\n```python\nclass Dog:\n   # 一次模拟小狗的简单尝试\n   def __init__(self,name,age):\n      # 初始化属性name和age\n      self.name = name\n      self.age = age\n   \n   def sit(self):\n      # 模拟小狗收到命令时坐下\n      print(f\"{self.name} is now siting.\")\n   \n   def roll_over(self):\n      # 模拟小狗收到命令时打滚\n      print(f\"{self.name} rolled over!\")\n\nmy_dog = Dog(\'willie\',6)\nyour_dog = Dog(\'Lucy\',3)\nprint(f\"My dog\'s name is {my_dog.name}\")\nprint(f\"My dog is {my_dog.age} years old.\")\nmy_dog.sit()\nmy_dog.roll_over()\nprint(f\"My dog\'s name is {your_dog.name}\")\nprint(f\"My dog is {your_dog.age} years old.\")\nyour_dog.sit()\n```\n\n## 8.2 使用类和实例\n1. Car类\n```python\nclass Car:\n   # 一次模拟汽车的简单尝试\n   def __init__(self,make,model,year):\n      self.make = make\n      self.model = model\n      self.year = year\n   \n   def get_descriptive_name(self):\n      long_name = f\"{self.year} {self.make} {self.model}\"\n      return long_name.title()\n   \nmy_new_car = Car(\'audi\',\'a4\',\'2024\')\nprint(my_new_car.get_descriptive_name())\n```\n2. 给属性指定默认值\n```python\nclass Car:\n   # 一次模拟汽车的简单尝试\n   def __init__(self,make,model,year):\n      self.make = make\n      self.model = model\n      self.year = year\n      self.odometer_reading = 0\n   \n   def get_descriptive_name(self):\n      long_name = f\"{self.year} {self.make} {self.model}\"\n      return long_name.title()\n\n   def read_odometer(self):\n      print(f\"This car has {self.odometer_reading} miles on it.\")\n   \nmy_new_car = Car(\'audi\',\'a4\',\'2024\')\nprint(my_new_car.get_descriptive_name())\nmy_new_car.read_odometer()\n```\n3. 修改属性的值\n> 1. 直接修改属性的值\n```python\nclass Car:\n   # 一次模拟汽车的简单尝试\n   def __init__(self,make,model,year):\n      self.make = make\n      self.model = model\n      self.year = year\n      self.odometer_reading = 0\n   \n   def get_descriptive_name(self):\n      long_name = f\"{self.year} {self.make} {self.model}\"\n      return long_name.title()\n\n   def read_odometer(self):\n      print(f\"This car has {self.odometer_reading} miles on it.\")\n   \nmy_new_car = Car(\'audi\',\'a4\',\'2024\')\nprint(my_new_car.get_descriptive_name())\n\nmy_new_car.odometer_reading = 23\nmy_new_car.read_odometer()\n```\n> 2. 添加方法修改属性的值\n{% tabs 添加方法修改属性的值 %}\n<!-- tab 示例 -->\n```python\nclass Car:\n   # 一次模拟汽车的简单尝试\n   def __init__(self,make,model,year):\n      self.make = make\n      self.model = model\n      self.year = year\n      self.odometer_reading = 0\n   \n   def get_descriptive_name(self):\n      long_name = f\"{self.year} {self.make} {self.model}\"\n      return long_name.title()\n\n   def read_odometer(self):\n      print(f\"This car has {self.odometer_reading} miles on it.\")\n   \n   def update_odometer(self,nileage):\n      self.odometer_reading = nileage\n   \nmy_new_car = Car(\'audi\',\'a4\',\'2024\')\nprint(my_new_car.get_descriptive_name())\n\nmy_new_car.update_odometer(23)\nmy_new_car.read_odometer()\n```\n<!-- endtab -->\n\n<!-- tab 对update_odometer()方法进行扩展 -->\n```python\n   --snip\n    def update_odometer(self,nileage):\n      if nileage >= odometer: \n         self.odometer_reading = nileage\n      else:\n         print(\"You can\'t roll back an odometer!\")\n```\n<!-- endtab -->\n{% endtabs %}\n> 3. 通过方法让属性的值递增\n```python\nclass Car:\n   --snip\n    def update_odometer(self,nileage):\n      --snip\n\n   def increment_odometer(self,miles):\n      self.odometer_reading += miles\n\nmy_new_car = Car(\'subaru\',\'outback\',\'2019\')\nprint(my_new_car.get_descriptive_name())\n\nmy_new_car.increment_odometer(300)\nmy_new_car.read_odometer()\n```\n\n## 8.3 继承\n1. 子类的__init__()方法\n```python\nclass Car:\n   # 一次模拟汽车的简单尝试\n   def __init__(self,make,model,year):\n      self.make = make\n      self.model = model\n      self.year = year\n      self.odometer_reading = 0\n   \n   def get_descriptive_name(self):\n      long_name = f\"{self.year} {self.make} {self.model}\"\n      return long_name.title()\n\n   def read_odometer(self):\n      print(f\"This car has {self.odometer_reading} miles on it.\")\n   def update_odometer(self,nileage):\n      self.odometer_reading = nileage\n      \n   def increment_odometer(self,miles):\n      self.odometer_reading += miles\n\nclass ElectricCar(Car):\n   # 电动汽车的独特之处\n   def __init__(self,make,model,year):\n      # 初始化父类的属性\n      super().__init__(make,model,year)\n   \nmy_leaf = ElectricCar(\'nissan\',\'leaf\',\'2024\')\nprint(my_leaf.get_descriptive_name())\n```\n{% tip waring %}\n1. 在定义子类时，必须在括号内指定父类的名称\n2. `super()`是一个特殊的函数，能够调用父类的方法，实例中的`super().__init__()`方法，让ElectricCar类包含这个方法定义的所有属性\n{% endtip %}\n2. 给子类定义属性和方法\n```python\nclass Car:\n   # 一次模拟汽车的简单尝试\n   def __init__(self,make,model,year):\n      self.make = make\n      self.model = model\n      self.year = year\n      self.odometer_reading = 0\n   \n   def get_descriptive_name(self):\n      long_name = f\"{self.year} {self.make} {self.model}\"\n      return long_name.title()\n\n   def read_odometer(self):\n      print(f\"This car has {self.odometer_reading} miles on it.\")\n   def update_odometer(self,nileage):\n      self.odometer_reading = nileage\n      \n   def increment_odometer(self,miles):\n      self.odometer_reading += miles\n\nclass ElectricCar(Car):\n   # 电动汽车的独特之处\n   def __init__(self,make,model,year):\n      # 初始化父类的属性\n      super().__init__(make,model,year)\n      self.battery_size = 40\n\n   def describe_battery(self):\n      print(f\"This car has a {self.battery_size}-kWh battery.\")\n   \nmy_leaf = ElectricCar(\'nissan\',\'leaf\',\'2024\')\nprint(my_leaf.get_descriptive_name())\nmy_leaf.describe_battery()\n```\n3. 重写父类中的方法\n{% span green,假设Car类有一个名为fill_gas_tank()的方法，它对电动汽车来说毫无意义，因此你可能想重写他 %}\n```python\nclass ElectricCar(Car):\n   --snip\n   def fill_gas_tank(self):\n      print(\"This car doesn\'t need a gas tank!\")\n```\n4. 将实例用作属性\n{% tabs 将实例用作属性 %}\n<!-- tab 示例-->\n```python\nclass Car:\n   --snip\n\nclass Battery:\n   def __init__(self,battery_size=40):\n      self.battery_size = battery_size\n\n   def discribe_battery(self):\n      print(f\"This car has a {self.battery_size}-kWh battery.\")\n\n\nclass ElectricCar(Car):\n   # 电动汽车的独特之处\n   def __init__(self,make,model,year):\n      # 初始化父类的属性\n      super().__init__(make,model,year)\n      self.battery = Battery()\n\n   \nmy_leaf = ElectricCar(\'nissan\',\'leaf\',\'2024\')\nprint(my_leaf.get_descriptive_name())\nmy_leaf.battery.discribe_battery()\n```\n{% tip succcess %}将实例赋给属性后，再调用其中的方法{% endtip %}\n<!-- endtab -->\n\n<!-- tab 给Battery类添加其他方法-->\n```python\nclass Car:\n   --snip\n\nclass Battery:\n   --snip\n   def get_range(self):\n      if self.battery_size == 40:\n         range = 150\n      elif self.battery_size == 65:\n         range = 225\n\n      print(f\"This car can go about {range} miles on a full charge\")\n\n\nclass ElectricCar(Car):\n   # 电动汽车的独特之处\n   def __init__(self,make,model,year):\n      # 初始化父类的属性\n      super().__init__(make,model,year)\n      self.battery = Battery()\n\n   \nmy_leaf = ElectricCar(\'nissan\',\'leaf\',\'2024\')\nprint(my_leaf.get_descriptive_name())\nmy_leaf.battery.discribe_battery()\nmy_leaf.battery.get_range()\n```\n<!-- endtab-->\n{% endtabs %}\n\n## 8.4 导入类\n1. 导入单个类\n>`类似导入模块`\n```python\nfrom module_name import 类名\n```\n2. 在一个模块中存储多个类\n```python\nfrom module_name import 类名\n```\n3. 从一个模块中导入多个类\n```python\nfrom module_name import 类名,类名···\n```\n4. 导入整个模块\n```python\nimport module_name\n```\n{% tip succcess %}使用`module_name.类名`访问需要的类{% endtip %}\n5. 导入模块中的所有类\n```python\nfrom module_name import *\n```\n{% tip warning %}不推荐使用这种方法，不清楚使用了模块中的哪些类{% endtip %}\n6. 在一个模块中导入另一个模块\n```python\nfrom module_name import 类名\n```\n7. 使用别名\n{% tabs class %}\n<!-- tab 为类指定别名 -->\n```python\nfrom module_name import 类名 as 别名\n```\n<!-- endtab -->\n\n<!-- tab 为模块指定别名 -->\n```python\nimport module_name as 别名\n```\n<!-- endtab -->\n{% endtabs %}\n\n## 8.5 Python标准库\n>`Python标准库`是一组模块，在安装Python时已经包含在内\n\n\n# 第九章 文件和异常\n## 9.1 读取文件\n1. 读取文件的全部内容\n```python\nfrom pathlib import Path\npath = Path(\'test.txt\')\ncontenes = path.read_text()\nprint(contenes)\n```\n{% note success modern %}使用`Path`类读取文件{% endnote %}\n2. 相对文件路径和绝对文件路径\n{% tabs test %}\n<!-- tab 相对文件路径 -->\n```python\npath = Path(\"text_files/filename.txt\")\n```\n<!-- endtab -->\n\n<!-- tab 绝对文件路径 -->\n```python\npath = Path(\"C:/Users/Administrator/Desktop/text_files/filename.txt\")\n```\n<!-- endtab -->\n{% endtabs %}\n>1. `相对文件路径`：相对于当前运行程序的所在目录的指定位置\n 2. `绝对文件路径`：以系统的根文件夹为起点\n{% note waring modern %}在显示文件路径时，Windows系统使用反斜杠`(\\)`而不是斜杠`(/)`，但是你在代码中应该始终使用斜杠{% endnote %}\n\n3. 访问文件中的各行\n```python\nfrom pathlib import Path\npath = Path(\'test.txt\')\ncontenes = path.read_text()\n\nlines = contenes.splitlines()\nfor line in lines:\n   print(line)\n```\n4. 使用文件的内容\n```python\nfrom pathlib import Path\npath = Path(\'test.txt\')\ncontenes = path.read_text()\n\nlines = contenes.splitlines()\npi_string = \'\'\nfor line in lines:\n   pi_string += line.lstrip()\n\nprint(pi_string)\nprint(len(pi_string))\n```\n{% note success modern %}\n1. 使用`lstrip()`方法去除每一行开头的空格\n2. 在读取文本文件时，Python将其中的所有文本都解释为字符串。如果读取的是数，并且要将其作为数值使用，就必须使用`int()`函数将其转换为整数，或者使用`float()`函数将其转化为浮点数\n{% endnote %}\n\n5. 包含100万位的大型文件\n```python\nfrom pathlib import Path\npath = Path(\'test.txt\')\ncontenes = path.read_text()\n\nlines = contenes.splitlines()\npi_string = \'\'\nfor line in lines:\n   pi_string += line.lstrip()\n\nprint(f\"{pi_string[:52]}...\")\nprint(len(pi_string))\n```\n{% note success modern %}在处理的数据量方面，Python没有任何限制。只要系统的内存足够大，你想处理多少数据就可以处理多少数据{% endnote %}\n6. 圆周率值中包含你的生日吗\n```python\nfrom pathlib import Path\npath = Path(\'test.txt\')\ncontenes = path.read_text()\n\nlines = contenes.splitlines()\npi_string = \'\'\nfor line in lines:\n   pi_string += line.lstrip()\n\nbirthday = input(\"Enter your birthday, in the form mmddyy:\")\nif birthday in pi_string:\n   print(\"包含\")\nelse:\n   print(\"不包含\")\n```\n\n## 9.2 写入文件\n1. 写入一行\n```python\nfrom pathlib import Path\n\npath = Path(\'test.txt\')\npath.write_text(\'Hello, world!\')\n```\n{% note success modern %}\n1. `Python`只能将字符串写入文本文件，如果要将数值数据存储在文本文件中，必须先使用函数`str()`将其转化为字符串格式\n2. 如果`path`变量对应的路径指向的文件不存在，就创建它{% endnote %}\n3. 写入多行\n```python\nfrom pathlib import Path\n\ncontents = \"I love programming.\\n\"\ncontents += \"I love creating new games.\\n\"\ncontents += \"I love learning new things.\\n\"\n\npath = Path(\'test.txt\')\npath.write_text(contents)\n```\n{% note warning modern %}如果指定的文件已存在，`write_text()`将删除其内容，并将指定的内容写入其中{% endnote %}\n\n## 9.3 异常\n1. 处理ZeroDivisionError异常\n```python\n   print(5/0)\n```\n{% note warning modern %}运行程序时，Python将引发`ZeroDivisionError`异常，并显示一条错误消息，将停止运行程序{% endnote %}\n2. 使用try-except代码块\n```python\ntry:\n   print(5/0)\nexcept ZeroDivisionError:\n   print(\"You can\'t divide by zero!\")\n```\n{% note success modern %}使用`try-except`代码块，可以捕获异常并处理它。如果程序没有引发任何异常，那么`except`代码块将不会被执行{% endnote %}\n3. 使用异常避免崩溃\n```python\nprint(\"Give me two numbers, and I\'ll divide them\")\nprint(\"Enter \'q\' to quit\")\n\nwhile True:\n   first_number = input(\"\\nFirst number: \")\n   if first_number ==\'q\':\n      break\n   second_number = input(\"Second number:\")\n   if second_number ==\'q\':\n      break\n   answer = int(first_number) / int(second_number)\n   print(answer)\n```\n{% note warning modern %}如果用户输入的不是数字，那么程序将引发`ValueError`异常，并停止运行程序{% endnote %}\n4. else代码块\n```python\nprint(\"Give me two numbers, and I\'ll divide them\")\nprint(\"Enter \'q\' to quit\")\n\nwhile True:\n   first_number = input(\"\\nFirst number: \")\n   if first_number ==\'q\':\n      break\n   second_number = input(\"Second number:\")\n   if second_number ==\'q\':\n      break\n   try:\n      answer = int(first_number) / int(second_number)\n   except ZeroDivisionError:\n      print(\"You can\'t divide by zero!\")\n   else:\n      print(answer)\n```\n{% note success modern %}如果程序没有引发任何异常，那么`else`代码块将被执行{% endnote %}\n5. 处理FileNotFoundError异常\n{% tabs test %}\n<!-- tab 示例 -->\n```python\n# 不存在test.txt文件\nfrom pathlib import Path\n\npath = Path(\'test.txt\')\ncontents = path.read_text(encoding=\'utf-8\')\n```\n<!-- endtab -->\n\n<!-- tab 处理异常 -->\n```python\n# 不存在test.txt文件\nfrom pathlib import Path\n\npath = Path(\'test.txt\')\ntry:\n   contents = path.read_text(encoding=\'utf-8\')\nexcept FileNotFoundError:\n   print(\"Sorry, the file does not exist.\")\n```\n<!-- endtab -->\n{% endtabs %}\n6. 分析文本\n```python\nfrom pathlib import Path\n\npath = Path(\'test.txt\')\ntry:\n   contents = path.read_text(encoding=\'utf-8\')\nexcept FileNotFoundError:\n   print(\"Sorry, the file does not exist.\")\nelse:\n   words = contents.split()\n   num_words = len(words)\n   print(f\"The file {path} has about {num_words} words.\")\n```\n7. 使用多个文件\n```python\nfrom pathlib import Path\n\ndef count_words(path):\n   try:\n      contents = path.read_text(encoding=\'utf-8\')\n   except FileNotFoundError:\n      print(f\"Sorry, the file {path} does not exist.\")\n   else:\n      words = contents.split()\n      num_words = len(words)\n      print(f\"The file {path} has about {num_words} words.\")\n\nfilenames = [\'alice.txt\', \'siddhartha.txt\', \'moby_dick.txt\', \'little_women.txt\']\nfor filename in filenames:\n   path = Path(filename)\n   count_words(path)\n```\n{% tip success %}使用`try-except`代码块有两个重要优点，一是避免用户看到`traceback`，二是让程序可以继续分析能够找到的其他文件{% endtip %}\n8. 静默失败\n```python\ndef count_words(path):\n   try:\n      contents = path.read_text(encoding=\'utf-8\')\n   except FileNotFoundError:\n      pass\n   else:\n      words = contents.split()\n      num_words = len(words)\n      print(f\"The file {path} has about {num_words} words.\")\n```\n{% note info modern %}当发生错误时，既不会出现`traceback`，也没有任何输出{% endnote %}\n\n## 9.4 存储数据\n1. 使用json.dumps()和json.loads()\n{% tabs test %}\n<!-- tab json.dumps()存储 -->\n```python\nfrom pathlib import Path\nimport json\n\nnumbers = [2,3,5,7,11,13]\n\npath = Path(\'numbers.json\')\ncontents = json.dumps(numbers)\npath.write_text(contents)\n```\n{% note info modern %}`json.dumps()`将列表转换为字符串，`path.write_text()`将字符串写入文件{% endnote %}\n<!-- endtab -->\n\n<!-- tab json.loads()读取 -->\n```python\nfrom pathlib import Path\nimport json\n\npath = Path(\'numbers.json\')\ncontents = path.read_text()\nnumbers = json.loads(contents)\n\nprint(numbers)\n```\n{% note info modern %}`path.read_text()`读取文件内容，`json.loads()`将字符串转换为列表{% endnote %}\n<!-- endtab -->\n{% endtabs %}\n2. 保存和读取用户生成的数据\n{% tabs test %}\n<!-- tab 保存数据 -->\n```python\nfrom pathlib import Path\nimport json\n\nusername = input(\"What is your name?\")\n\npath = Path(\'username.json\')\ncontents = json.dumps(username)\npath.write_text(contents)\n\nprint(f\"We\'ll remember you when you come back,{username}!\")\n```\n<!-- endtab -->\n\n<!-- tab 读取数据 -->\n```python\nfrom pathlib import Path\nimport json\n\npath = Path(\'username.json\')\ncontents = path.read_text()\nusername = json.loads(contents)\n\nprint(f\"Welcome back,{username}\")\n```\n<!-- endtab -->\n\n<!-- tab 代码合并 -->\n```python\nfrom pathlib import Path\nimport json\n\npath = Path(\'username.json\')\nif path.exists():\n    contents = path.read_text()\n    username = json.loads(contents)\n    print(f\"Welcome back,{username}\")\nelse:\n    username = input(\"What is your name?\")\n    path.write_text(json.dumps(username))\n    print(f\"We\'ll remember you next time,{username}\")\n```\n<!-- endtab -->\n{% endtabs %}\n3. 重构\n{% tabs test %}\n<!-- tab greet_user()函数 -->\n```python\nfrom pathlib import Path\nimport json\n\ndef greet_user():\n    path = Path(\'username.json\')\n    if path.exists():\n        contents = path.read_text()\n        username = json.loads(contents)\n        print(f\"Welcome back,{username}\")\n    else:\n        username = input(\"What is your name?\")\n        path.write_text(json.dumps(username))\n        print(f\"We\'ll remember you next time,{username}\")\n        \ngreet_user()\n```\n<!-- endtab -->\n\n<!-- tab get_stored_username()函数 -->\n```python\nfrom pathlib import Path\nimport json\n\ndef get_stored_username(path):\n    if path.exists():\n        contents = path.read_text()\n        return json.loads(contents)\n    else:\n        return None\n    \ndef greet_user():\n    path = Path(\'username.json\')\n    username = get_stored_username(path)\n    if username:\n        print(f\"Welcome back,{username}\")\n    else:\n        username = input(\"What is your name?\")\n        path.write_text(json.dumps(username))\n        print(f\"We\'ll remember you next time,{username}\")\n        \ngreet_user()\n```\n<!-- endtab -->\n\n<!-- tab get_new_username()函数 -->\n```python\nfrom pathlib import Path\nimport json\n\ndef get_stored_username(path):\n    if path.exists():\n        contents = path.read_text()\n        return json.loads(contents)\n    else:\n        return None\n    \ndef get_new_username(path):\n    username = input(\"What is your name?\")\n    path.write_text(json.dumps(username))\n    return username\n    \ndef greet_user():\n    path = Path(\'username.json\')\n    username = get_stored_username(path)\n    if username:\n        print(f\"Welcome back,{username}\")\n    else:\n        username = get_new_username(path)\n        print(f\"We\'ll remember you next time,{username}\")\n        \ngreet_user()\n```\n<!-- endtab -->\n{% endtabs %}\n\n\n# 第十章 测试代码\n## 10.1 使用pip安装pytest\n1. 更新pip\n{% tabs test %}\n<!-- tab 更新pip -->\n```bash\npython -m pip install --upgrade pip\n```\n<!-- endtab -->\n\n<!-- tab 更新安装的任何包 -->\n```bash\npython -m pip install --upgrade <package>\n```\n<!-- endtab -->\n{% endtabs %}\n2. 安装pytest\n{% tabs test %}\n<!-- tab 安装pytest -->\n```bash\npython -m pip install --user pytest\n```\n<!-- endtab -->\n\n<!-- tab 安装的任何包 -->\n```bash\npython -m pip install --user <package>\n```\n<!-- endtab -->\n{% endtabs %}\n\n## 10.2 测试函数\n{% note info modern %}测试函数中验证代码格式`assert 变量名 == 指定的值`{% endnote %}\n## 10.3 测试类\n1. 各种断言\n\n| 断言  | 用途     |\n| -------- | -------- | ----|\n| assert a == b        | 断言两个值相等 |\n| assert a != b        | 断言两个值不等 |\n| assert a        | 断言a的布尔值为True  |\n| assert assert not a        | 断言a的布尔值为False |\n| assert element in list        | 断言元素在列表中 |\n| assert element not in list        | 断言元素不在列表中  |\n\n{% tip warning %}这里列出的只是九牛一毛，测试能包含任意可用条件语句表示的断言{% endtip %}\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n', NULL, 12, 0, 1, NULL, NULL, 1, 1, '2024-08-08 11:18:32', '2024-08-15 13:09:57', 'jiaming', 0);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `source` int NOT NULL COMMENT '评论来源标识',
  `type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '评论来源类型',
  `parent_comment_id` int NOT NULL DEFAULT 0 COMMENT '父评论ID',
  `user_id` int NOT NULL COMMENT '发表用户ID',
  `floor_comment_id` int NULL DEFAULT NULL COMMENT '楼层评论ID',
  `parent_user_id` int NULL DEFAULT NULL COMMENT '父发表用户名ID',
  `like_count` int NOT NULL DEFAULT 0 COMMENT '点赞数',
  `comment_content` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '评论内容',
  `comment_info` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '评论额外信息',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `source`(`source` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '文章评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 1, 'article', 0, 1, NULL, NULL, 0, '其实马嘉明，我也一直喜欢你，让我们重新来过，好吗？', NULL, '2024-08-08 11:21:38');
INSERT INTO `comment` VALUES (2, 1, 'article', 0, 1, NULL, NULL, 0, '[再见]', NULL, '2024-08-14 18:20:47');

-- ----------------------------
-- Table structure for family
-- ----------------------------
DROP TABLE IF EXISTS `family`;
CREATE TABLE `family`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int NOT NULL COMMENT '用户ID',
  `bg_cover` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '背景封面',
  `man_cover` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '男生头像',
  `woman_cover` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '女生头像',
  `man_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '男生昵称',
  `woman_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '女生昵称',
  `timing` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '计时',
  `countdown_title` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '倒计时标题',
  `countdown_time` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '倒计时时间',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否启用[0:否，1:是]',
  `family_info` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '额外信息',
  `like_count` int NOT NULL DEFAULT 0 COMMENT '点赞数',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最终修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '家庭信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of family
-- ----------------------------
INSERT INTO `family` VALUES (1, 1, 'https://picture.jiaming-blog.top/wallpaper/70.webp', 'https://picture.jiaming-blog.top/wallpaper/70.webp', 'https://picture.jiaming-blog.top/wallpaper/70.webp', '明', '萱', '2019-01-10 00:00:00', '春节倒计时', '2025-01-29 00:00:00', 1, '我是真的喜欢你', 0, '2000-01-01 00:00:00', '2000-01-01 00:00:00');

-- ----------------------------
-- Table structure for history_info
-- ----------------------------
DROP TABLE IF EXISTS `history_info`;
CREATE TABLE `history_info`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'ip',
  `nation` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '国家',
  `province` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '省份',
  `city` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '城市',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '历史信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of history_info
-- ----------------------------
INSERT INTO `history_info` VALUES (1, NULL, '192.168.137.1', NULL, NULL, '内网IP', '2024-08-07 18:12:04');
INSERT INTO `history_info` VALUES (2, 1, '192.168.137.1', NULL, NULL, '内网IP', '2024-08-07 18:47:13');
INSERT INTO `history_info` VALUES (3, NULL, '192.168.137.1', NULL, NULL, '内网IP', '2024-08-08 10:25:11');
INSERT INTO `history_info` VALUES (4, 1, '192.168.137.1', NULL, NULL, '内网IP', '2024-08-08 10:26:01');
INSERT INTO `history_info` VALUES (5, 2, '192.168.137.1', NULL, NULL, '内网IP', '2024-08-08 12:16:50');
INSERT INTO `history_info` VALUES (6, NULL, '192.168.137.1', NULL, NULL, '内网IP', '2024-08-13 14:36:43');
INSERT INTO `history_info` VALUES (7, 1, '192.168.137.1', NULL, NULL, '内网IP', '2024-08-13 17:55:04');
INSERT INTO `history_info` VALUES (8, NULL, '192.168.137.1', NULL, NULL, '内网IP', '2024-08-14 11:42:29');
INSERT INTO `history_info` VALUES (9, 1, '192.168.137.1', NULL, NULL, '内网IP', '2024-08-14 12:04:53');
INSERT INTO `history_info` VALUES (10, 2, '192.168.137.1', NULL, NULL, '内网IP', '2024-08-14 14:31:52');
INSERT INTO `history_info` VALUES (11, NULL, '192.168.83.1', NULL, NULL, '内网IP', '2024-08-14 19:56:27');
INSERT INTO `history_info` VALUES (12, 1, '192.168.83.1', NULL, NULL, '内网IP', '2024-08-14 19:56:27');
INSERT INTO `history_info` VALUES (13, NULL, '192.168.137.1', NULL, NULL, '内网IP', '2024-08-15 12:34:52');
INSERT INTO `history_info` VALUES (14, 1, '192.168.137.1', NULL, NULL, '内网IP', '2024-08-15 12:35:30');

-- ----------------------------
-- Table structure for im_chat_group
-- ----------------------------
DROP TABLE IF EXISTS `im_chat_group`;
CREATE TABLE `im_chat_group`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `group_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '群名称',
  `master_user_id` int NOT NULL COMMENT '群主用户ID',
  `avatar` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '群头像',
  `introduction` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '简介',
  `notice` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '公告',
  `in_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '进入方式[0:无需验证，1:需要群主或管理员同意]',
  `group_type` tinyint NOT NULL DEFAULT 1 COMMENT '类型[1:聊天群，2:话题]',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '聊天群' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of im_chat_group
-- ----------------------------
INSERT INTO `im_chat_group` VALUES (-1, '公共聊天室', 1, NULL, '公共聊天室', '欢迎光临！', 0, 1, '2024-08-07 17:57:30');

-- ----------------------------
-- Table structure for im_chat_group_user
-- ----------------------------
DROP TABLE IF EXISTS `im_chat_group_user`;
CREATE TABLE `im_chat_group_user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `group_id` int NOT NULL COMMENT '群ID',
  `user_id` int NOT NULL COMMENT '用户ID',
  `verify_user_id` int NULL DEFAULT NULL COMMENT '审核用户ID',
  `remark` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `admin_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否管理员[0:否，1:是]',
  `user_status` tinyint NOT NULL COMMENT '用户状态[0:未审核，1:审核通过，2:禁言]',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '聊天群成员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of im_chat_group_user
-- ----------------------------
INSERT INTO `im_chat_group_user` VALUES (1, -1, 1, NULL, NULL, 1, 1, '2024-08-07 17:57:30');
INSERT INTO `im_chat_group_user` VALUES (2, -1, 2, NULL, NULL, 0, 1, '2024-08-08 12:16:50');

-- ----------------------------
-- Table structure for im_chat_user_friend
-- ----------------------------
DROP TABLE IF EXISTS `im_chat_user_friend`;
CREATE TABLE `im_chat_user_friend`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int NOT NULL COMMENT '用户ID',
  `friend_id` int NOT NULL COMMENT '好友ID',
  `friend_status` tinyint NOT NULL COMMENT '朋友状态[0:未审核，1:审核通过]',
  `remark` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '好友' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of im_chat_user_friend
-- ----------------------------
INSERT INTO `im_chat_user_friend` VALUES (1, 2, 1, 1, '站长', '2024-08-08 12:16:50');
INSERT INTO `im_chat_user_friend` VALUES (2, 1, 2, 1, NULL, '2024-08-08 12:16:50');

-- ----------------------------
-- Table structure for im_chat_user_group_message
-- ----------------------------
DROP TABLE IF EXISTS `im_chat_user_group_message`;
CREATE TABLE `im_chat_user_group_message`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `group_id` int NOT NULL COMMENT '群ID',
  `from_id` int NOT NULL COMMENT '发送ID',
  `to_id` int NULL DEFAULT NULL COMMENT '接收ID',
  `content` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '内容',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '群聊记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of im_chat_user_group_message
-- ----------------------------

-- ----------------------------
-- Table structure for im_chat_user_message
-- ----------------------------
DROP TABLE IF EXISTS `im_chat_user_message`;
CREATE TABLE `im_chat_user_message`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `from_id` int NOT NULL COMMENT '发送ID',
  `to_id` int NOT NULL COMMENT '接收ID',
  `content` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '内容',
  `message_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否已读[0:未读，1:已读]',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `union_index`(`to_id` ASC, `message_status` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '单聊记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of im_chat_user_message
-- ----------------------------

-- ----------------------------
-- Table structure for label
-- ----------------------------
DROP TABLE IF EXISTS `label`;
CREATE TABLE `label`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `sort_id` int NOT NULL COMMENT '分类ID',
  `label_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '标签名称',
  `label_description` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '标签描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '标签' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of label
-- ----------------------------
INSERT INTO `label` VALUES (1, 1, 'LOVE', '对她的单相思');
INSERT INTO `label` VALUES (2, 2, '美', '美');

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int NOT NULL COMMENT '用户ID',
  `type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资源类型',
  `path` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资源路径',
  `size` int NULL DEFAULT NULL COMMENT '资源内容的大小，单位：字节',
  `original_name` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文件名称',
  `mime_type` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资源的 MIME 类型',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否启用[0:否，1:是]',
  `store_type` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '存储平台',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_path`(`path` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '资源信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES (1, 1, 'webBackgroundImage', 'si7dhljv6.hb-bkt.clouddn.comwebBackgroundImage/jiaming11723632675316268.jpg', 498531, '微信图片_20240521203217.jpg', 'image/jpeg', 1, 'qiniu', '2024-08-14 18:51:16');
INSERT INTO `resource` VALUES (2, 1, 'randomAvatar', 'si7dhljv6.hb-bkt.clouddn.comrandomAvatar/jiaming11723632779397706.jpg', 553649, '微信图片_20240521201457.jpg', 'image/jpeg', 1, 'qiniu', '2024-08-14 18:53:01');
INSERT INTO `resource` VALUES (3, 1, 'randomAvatar', 'si7dhljv6.hb-bkt.clouddn.comrandomAvatar/jiaming11723632909987299.png', 75879, '微信图片_20240813144213.png', 'image/png', 1, 'qiniu', '2024-08-14 18:55:10');
INSERT INTO `resource` VALUES (4, 1, 'randomAvatar', 'si7dhljv6.hb-bkt.clouddn.comrandomAvatar/jiaming11723633438035339.jpg', 553649, '微信图片_20240521201457.jpg', 'image/jpeg', 1, 'qiniu', '2024-08-14 19:03:58');
INSERT INTO `resource` VALUES (5, 1, 'randomAvatar', 'si7dhljv6.hb-bkt.clouddn.comrandomAvatar/jiaming11723633474003236.png', 114276, '微信图片_20240721223546.png', 'image/png', 1, 'qiniu', '2024-08-14 19:04:34');
INSERT INTO `resource` VALUES (6, 1, 'randomAvatar', 'si7dhljv6.hb-bkt.clouddn.comrandomAvatar/jiaming11723633500283703.jpg', 138137, '微信图片_20240813143955.jpg', 'image/jpeg', 1, 'qiniu', '2024-08-14 19:05:00');
INSERT INTO `resource` VALUES (7, 1, 'randomAvatar', 'si7dhljv6.hb-bkt.clouddn.comrandomAvatar/jiaming11723633522652884.jpg', 498531, '微信图片_20240521203217.jpg', 'image/jpeg', 1, 'qiniu', '2024-08-14 19:05:22');
INSERT INTO `resource` VALUES (8, 1, 'webAvatar', 'http://si7dhljv6.hb-bkt.clouddn.com/webAvatar/jiaming11723633577307843.jpg', 498531, '微信图片_20240521203217.jpg', 'image/jpeg', 1, 'qiniu', '2024-08-14 19:06:17');
INSERT INTO `resource` VALUES (9, 1, 'randomAvatar', 'http://si7dhljv6.hb-bkt.clouddn.com/randomAvatar/jiaming11723633587932777.jpg', 138137, '微信图片_20240813143955.jpg', 'image/jpeg', 1, 'qiniu', '2024-08-14 19:06:28');
INSERT INTO `resource` VALUES (10, 1, 'randomAvatar', 'http://si7dhljv6.hb-bkt.clouddn.com/randomAvatar/ming21723641087837572.jpg', 138137, '微信图片_20240813143955.jpg', 'image/jpeg', 1, 'qiniu', '2024-08-14 21:11:28');

-- ----------------------------
-- Table structure for resource_path
-- ----------------------------
DROP TABLE IF EXISTS `resource_path`;
CREATE TABLE `resource_path`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '标题',
  `classify` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分类',
  `cover` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '封面',
  `url` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '链接',
  `introduction` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '简介',
  `type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资源类型',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否启用[0:否，1:是]',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '备注',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '资源聚合' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of resource_path
-- ----------------------------
INSERT INTO `resource_path` VALUES (2, '白月光', '白月光', 'https://tuchuang.voooe.cn/images/2023/12/24/0-1.jpg', '', '', 'lovePhoto', 1, '1', '2024-08-08 15:05:20');

-- ----------------------------
-- Table structure for sort
-- ----------------------------
DROP TABLE IF EXISTS `sort`;
CREATE TABLE `sort`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `sort_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分类名称',
  `sort_description` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分类描述',
  `sort_type` tinyint NOT NULL DEFAULT 1 COMMENT '分类类型[0:导航栏分类，1:普通分类]',
  `priority` int NULL DEFAULT NULL COMMENT '分类优先级：数字小的在前面',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sort
-- ----------------------------
INSERT INTO `sort` VALUES (1, '和她的点滴', '白月光', 1, 10);
INSERT INTO `sort` VALUES (2, '她', '白月光', 0, 11);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `config_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名称',
  `config_key` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '键名',
  `config_value` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '1 私用 2 公开',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, 'QQ邮箱号', 'spring.mail.username', '1351849735@qq.com', '2');
INSERT INTO `sys_config` VALUES (2, 'QQ邮箱授权码', 'spring.mail.password', 'ifrccmupkudcffcg', '2');
INSERT INTO `sys_config` VALUES (3, '邮箱验证码模板', 'user.code.format', '【POETIZE】%s为本次验证的验证码，请在5分钟内完成验证。为保证账号安全，请勿泄漏此验证码。', '2');
INSERT INTO `sys_config` VALUES (4, '邮箱订阅模板', 'user.subscribe.format', '【POETIZE】您订阅的专栏【%s】新增一篇文章：%s。', '2');
INSERT INTO `sys_config` VALUES (5, '默认存储平台', 'store.type', 'qiniu', '2');
INSERT INTO `sys_config` VALUES (6, '本地存储启用状态', 'local.enable', 'false', '2');
INSERT INTO `sys_config` VALUES (7, '七牛云存储启用状态', 'qiniu.enable', 'true', '2');
INSERT INTO `sys_config` VALUES (8, '本地存储上传文件根目录', 'local.uploadUrl', '/home/file/', '1');
INSERT INTO `sys_config` VALUES (9, '本地存储下载前缀', 'local.downloadUrl', '仿照：【https://poetize.cn/static/】，将域名换成自己的服务器ip或域名', '2');
INSERT INTO `sys_config` VALUES (10, '七牛云-accessKey', 'qiniu.accessKey', '1DwmmVBgTqJFJwxCh6MU7ePtS4OU0WypfARyGXxY', '2');
INSERT INTO `sys_config` VALUES (11, '七牛云-secretKey', 'qiniu.secretKey', 'byMLSi9qmkBAVWtDfQxLnvSeTlGLl-E0_gru0_JL', '2');
INSERT INTO `sys_config` VALUES (12, '七牛云-bucket', 'qiniu.bucket', 'jiaming2024', '2');
INSERT INTO `sys_config` VALUES (13, '七牛云-域名', 'qiniu.downloadUrl', 'http://si7dhljv6.hb-bkt.clouddn.com/', '2');
INSERT INTO `sys_config` VALUES (15, 'IM-聊天室启用状态', 'im.enable', 'true', '2');
INSERT INTO `sys_config` VALUES (16, '七牛云上传地址', 'qiniuUrl', 'https://up-z1.qiniup.com', '2');
INSERT INTO `sys_config` VALUES (17, '备案号', 'beian', '', '2');
INSERT INTO `sys_config` VALUES (18, '前端静态资源路径前缀', 'webStaticResourcePrefix', '仿照：【https://poetize.cn/static/】', '2');

-- ----------------------------
-- Table structure for tree_hole
-- ----------------------------
DROP TABLE IF EXISTS `tree_hole`;
CREATE TABLE `tree_hole`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `avatar` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像',
  `message` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '留言',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '树洞' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tree_hole
-- ----------------------------
INSERT INTO `tree_hole` VALUES (1, NULL, '我喜欢你', '2024-08-08 10:37:23');
INSERT INTO `tree_hole` VALUES (2, NULL, '嘉明最帅了', '2024-08-08 15:17:39');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `phone_number` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号',
  `email` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `user_status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否启用[0:否，1:是]',
  `gender` tinyint NULL DEFAULT NULL COMMENT '性别[1:男，2:女，0:保密]',
  `open_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'openId',
  `avatar` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像',
  `admire` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '赞赏',
  `subscribe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '订阅',
  `introduction` varchar(4096) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '简介',
  `user_type` tinyint NOT NULL DEFAULT 2 COMMENT '用户类型[0:admin，1:管理员，2:普通用户]',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最终修改时间',
  `update_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '最终修改人',
  `deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否启用[0:未删除，1:已删除]',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'jiaming', '47bce5c74f589f4867dbd57e9ca9f808', '', '1351849735@qq.com', 1, 1, '', 'https://picture.jiaming-blog.top/wallpaper/23.webp ', '3', '[1]', '帅比一枚', 0, '2024-08-07 17:57:30', '2024-08-14 14:32:19', NULL, 0);
INSERT INTO `user` VALUES (2, 'ming', '202cb962ac59075b964b07152d234b70', NULL, '2698537562@qq.com', 1, 1, NULL, 'https://picture.jiaming-blog.top/wallpaper/23.webp ', NULL, NULL, NULL, 2, '2024-08-08 12:16:50', '2024-08-15 13:08:01', NULL, 0);

-- ----------------------------
-- Table structure for web_info
-- ----------------------------
DROP TABLE IF EXISTS `web_info`;
CREATE TABLE `web_info`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `web_name` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '网站名称',
  `web_title` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '网站信息',
  `notices` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '公告',
  `footer` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '页脚',
  `background_image` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '背景',
  `avatar` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '头像',
  `random_avatar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '随机头像',
  `random_name` varchar(4096) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '随机名称',
  `random_cover` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '随机封面',
  `waifu_json` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '看板娘消息',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否启用[0:否，1:是]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '网站信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web_info
-- ----------------------------
INSERT INTO `web_info` VALUES (1, '编程改变世界', '嘉明の Blog', '[\"编程改变世界\"]', '宁夏大学信息工程学院      马嘉明12022246826', 'https://picture.jiaming-blog.top/wallpaper/2.webp', 'https://picture.jiaming-blog.top/wallpaper/17.jpg', '[\"https://picture.jiaming-blog.top/wallpaper/23.webp \",\"https://picture.jiaming-blog.top/wallpaper/23.webp \",\"si7dhljv6.hb-bkt.clouddn.comrandomAvatar/jiaming11723632779397706.jpg\"]', '[\"你没有我帅\",\"你帅不过我\",\"你能帅的过我？\",\"我比你帅\"]', '[\"https://picture.jiaming-blog.top/wallpaper/23.webp\",\"https://picture.jiaming-blog.top/wallpaper/40.webp\",\"https://picture.jiaming-blog.top/wallpaper/59.webp\"]', '{}', 1);

-- ----------------------------
-- Table structure for wei_yan
-- ----------------------------
DROP TABLE IF EXISTS `wei_yan`;
CREATE TABLE `wei_yan`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int NOT NULL COMMENT '用户ID',
  `like_count` int NOT NULL DEFAULT 0 COMMENT '点赞数',
  `content` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '内容',
  `type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '类型',
  `source` int NULL DEFAULT NULL COMMENT '来源标识',
  `is_public` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否公开[0:仅自己可见，1:所有人可见]',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '微言表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wei_yan
-- ----------------------------
INSERT INTO `wei_yan` VALUES (1, 1, 0, '专一的男人', 'friend', NULL, 1, '2024-08-08 11:38:59');
INSERT INTO `wei_yan` VALUES (2, 2, 0, '到此一游', 'friend', NULL, 1, '2024-08-08 12:16:50');

SET FOREIGN_KEY_CHECKS = 1;
