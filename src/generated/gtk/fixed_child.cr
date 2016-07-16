module Gtk
  class FixedChild
    include GObject::WrappedType

    def self.new(widget : Gtk::Widget|Nil = nil, x : Int32|Nil = nil, y : Int32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      new(ptr.as(LibGtk::FixedChild*)).tap do |object|
        object.widget = widget unless widget.nil?
        object.x = x unless x.nil?
        object.y = y unless y.nil?
      end
    end

    @gtk_fixed_child : LibGtk::FixedChild*?
    def initialize(@gtk_fixed_child : LibGtk::FixedChild*)
    end

    def to_unsafe
      @gtk_fixed_child.not_nil!
    end

    def widget
      Gtk::Widget.new((to_unsafe.value.widget))
    end

    def widget=(value : Gtk::Widget)
      to_unsafe.value.widget = value.to_unsafe.as(LibGtk::Widget*)
    end

    def x
      (to_unsafe.value.x)
    end

    def x=(value : Int32)
      to_unsafe.value.x = Int32.new(value)
    end

    def y
      (to_unsafe.value.y)
    end

    def y=(value : Int32)
      to_unsafe.value.y = Int32.new(value)
    end

  end
end

