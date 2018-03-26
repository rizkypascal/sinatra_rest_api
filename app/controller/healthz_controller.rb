# frozen_string_literal: true

class HealthzController < ApplicationController
  get '/' do
    'ok'
  end
end
