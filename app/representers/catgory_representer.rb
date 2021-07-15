class CatgoryRepresenter
    def initialize(catgory)
      @catgory = catgory
    end

    def as_json
        {
            id:catgory.id,
            name: catgory.name
        }
    end
    
    private
    attr_reader :catgory
end