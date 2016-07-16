module Gtk
  class ToolPalettePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ToolPalettePrivate*))
    end

    @gtk_tool_palette_private : LibGtk::ToolPalettePrivate*?
    def initialize(@gtk_tool_palette_private : LibGtk::ToolPalettePrivate*)
    end

    def to_unsafe
      @gtk_tool_palette_private.not_nil!
    end

  end
end

