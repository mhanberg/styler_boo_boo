defmodule StylerBooBooWeb.Components.CardTest do
  use StylerBooBooWeb.ConnCase, async: true
  use Surface.LiveViewTest

  catalogue_test(StylerBooBooWeb.Card)
end
