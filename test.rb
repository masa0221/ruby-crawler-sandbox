def area(x, y) x*y end
class Rect
    def initialize(x, y) @x, @y = x, y end
    attr_reader :x, :y

    # 引数メソッド化
    def area() x*y end
end
area(10, 5) # =>
Rect.new(10, 5).area # =>

ary = [];
[1, 10, 100].each { |x| ary << x *3 };
ary # =>

[1, 10, 100].map { |x| x * 3 } # =>
[2, 7, 8].select { |x| x.odd? } # =>

def f(a:1, b: "foo", c: nil) [a, b, c] end
f # => 
f a: 10        # =>
f c: 1.2, a: 10 # =>
f({:a => 10}) # =>
f unknown: 1 rescue $! # => 
