#高校生
highschool = Category.create(name: "高校生")
highschool_1 = highschool.children.create(name: "現代文")
highschool_2 = highschool.children.create(name: "古典")
highschool_3 = highschool.children.create(name: "地理")
highschool_4 = highschool.children.create(name: "世界史")
highschool_5 = highschool.children.create(name: "日本史")
highschool_6 = highschool.children.create(name: "公民")
highschool_7 = highschool.children.create(name: "数学")
highschool_8 = highschool.children.create(name: "物理")
highschool_9 = highschool.children.create(name: "化学")
highschool_10 = highschool.children.create(name: "生物")
highschool_11 = highschool.children.create(name: "地学")
highschool_12 = highschool.children.create(name: "英語")

#中学生
juniorhighschool = Category.create(name: "中学生")
juniorhighschool_1 = juniorhighschool.children.create(name: "国語")
juniorhighschool_2 = juniorhighschool.children.create(name: "社会")
juniorhighschool_3 = juniorhighschool.children.create(name: "数学")
juniorhighschool_4 = juniorhighschool.children.create(name: "理科")
juniorhighschool_5 = juniorhighschool.children.create(name: "英語")

#小学生
elementaryschool = Category.create(name: "小学生")
elementaryschool_1 = elementaryschool.children.create(name: "国語")
elementaryschool_2 = elementaryschool.children.create(name: "社会")
elementaryschool_3 = elementaryschool.children.create(name: "算数")
elementaryschool_4 = elementaryschool.children.create(name: "理科")