# typed: true
class Foo
  def self.bar()
  end

  meth_name = 'foo'
  class_eval <<~METHOD, __FILE__, __LINE__ + 1
    def #{meth_name}(...)
      puts 'foo'
    end
  METHOD
end
