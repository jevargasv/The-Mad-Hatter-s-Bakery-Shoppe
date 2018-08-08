class Menu
    attr_accessor :name, :src, :price, :description
    def initialize(name, src, price, description)
        @name = name
        @src = src
        @price = price
        @description = description
    end
end

# EAT ME! - Food Items

class Cookie < Menu
    attr_accessor :name, :src, :price, :description
    def initialize(name, src, price, description)
        super(name, src, price, description)
    end
end

class Cake < Menu
    attr_accessor :name, :src, :price, :description
    def initialize(name, src, price, description)
        super(name, src, price, description)
    end
end

class Cupcake < Menu
    attr_accessor :name, :src, :price, :description
    def initialize(name, src, price, description)
        super(name, src, price, description)
    end
end

class Muffin < Menu
    attr_accessor :name, :src, :price, :description
    def initialize(name, src, price, description)
        super(name, src, price, description)
    end
end

class Sandwich < Menu
    attr_accessor :name, :src, :price, :description
    def initialize(name, src, price, description)
        super(name, src, price, description)
    end
end

class Doughnut < Menu
    attr_accessor :name, :src, :price, :description
    def initialize(name, src, price, description)
        super(name, src, price, description)
    end
end

# DRINK ME! - Beverage Items

class Tea < Menu
    attr_accessor :name, :src, :price, :description
    def initialize(name, src, price, description)
        super(name, src, price, description)
    end
end

class Coffee < Menu
    attr_accessor :name, :src, :price, :description
    def initialize(name, src, price, description)
        super(name, src, price, description)
    end
end

class Juice < Menu
    attr_accessor :name, :src, :price, :description
    def initialize(name, src, price, description)
        super(name, src, price, description)
    end
end

class Alcohol < Menu
    attr_accessor :name, :src, :price, :description
    def initialize(name, src, price, description)
        super(name, src, price, description)
    end
end

