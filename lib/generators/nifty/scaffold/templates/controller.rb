class <%= plural_class_name %>Controller < ApplicationController
  layout 'admin'
  <%= controller_methods :actions %>
end
