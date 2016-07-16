module Gtk
  class ColorButtonPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ColorButtonPrivate*))
    end

    @gtk_color_button_private : LibGtk::ColorButtonPrivate*?
    def initialize(@gtk_color_button_private : LibGtk::ColorButtonPrivate*)
    end

    def to_unsafe
      @gtk_color_button_private.not_nil!
    end

  end
end

