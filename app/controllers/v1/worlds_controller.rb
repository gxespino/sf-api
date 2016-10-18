module V1
  class WorldsController < ApplicationController
    def index
      render(
        json: sample_json,
        status: 200
      )
    end

    private

    def sample_json
      JSON.generate(
        { 'data': [
          {
            'text': 'Hello World',
            'class': 'world-style'
          }
        ] }
      )
    end
  end
end
