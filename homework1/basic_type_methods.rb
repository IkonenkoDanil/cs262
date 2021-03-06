# 1. Fixnum(Integer)
n = -5
# Метод, увеличивающий число на единицу
puts n.next
# Метод проверяющий является ли число нулём
puts n.zero?
# Метод возвращающий модуль числа
puts n.abs

puts "\n"

# 2. Float
f1 = 8.43
f2 = -3.24
# Метод, округляющий вещественное число вниз до целой части
puts f1.floor
# Метод, возвращающий результат деления 2-х чисел в виде массива с целой частью и остатком от деления
puts f1.divmod(f2)

puts "\n"

# 3. String
s1 = 'HeLlO wOrLd'
s2 = '  hello world  '
c = 'a'
# Метод, приводящий все символы в строке к нижнему регистру
puts s1.downcase
# Метод, возвращающий следующий символ за текущим (согласно кодам ASCII)
puts c.next
# Метод изменяющий текущий объект строки, путём удаления предшествующих и завершающих пробельных символов
puts s2.strip

puts "\n"

# 4. Array
m = [1, 2, 1, 3, 4, 1, 3, 4, 5, 3, 2, 1]
# Метод, удаляющий все встречающиеся элементы в массиве равные заданному
m.delete(1)
puts m.join(' ')  # join для вывода в одну строку
# Метод, возвращающий текущий массив с элементами в случайном порядке
puts m.shuffle.join(' ')
# Метод, превращающий массив в строку путём объединения его элементов
puts m.join

puts "\n"

# 5. Hash
h1 = {:name => 'Danil', :surname => 'Ikonenko', :age => 19}
h2 = {:university => 'ITMO', :group => 'K3241'}
# Метод, проверяющий наличие заданного ключа в хэше
puts h1.include?(:name)
# Метод, объединяющий 2 объекта хэшей
puts h1.merge(h2)

puts "\n"

# 6. Range
r = (1..10)
# Метод, возвращающий максимальное значение диапазона
puts r.max

puts "\n"

# 7. Модифицировать код таким образом, чтобы вывод на экран соответствовал виду
results = [10, 2, 5, 12, 11, 11, 4]
for sum, i in results.each_with_index
    puts "Index #{i + 1}: Value #{sum}"
end