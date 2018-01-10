---
title: 我为什么学ruby？
---
对于学习新编程语言，有人认为，所有的编程语言都是相通的，学会一种，其它的都不是问题。也有人说，你用别的语言写出的功能，我也能用我会的语言写出，没有必要新学一种。你是怎么想的？

## ruby之旅

认识ruby是从rails开始的，一开始就被它简洁风格所吸引。

### 惊叹于rails 的开发效率

rails是一个全功能的web开发框架，默认为你设置了web开发的基础，让你专心开发你的业务逻辑，例如,如下基础功能在其它语言的web开发中，好多都需要自己手工添加配置。
1. log, cache,flash, validation等常用必备功能
2. csrf和iframe 安全预防措施
3. orm, unit test 
4. 前端默认的scss, coffeescript 支持，dev 环境下分离，production环境下默认合并压缩。

强大的命令行工具, 瞬间为你生成可用的简单REST CRUD, 你可能会由于一些之前的代码生成工具使用经历对代码生成工具产生偏见, 当你用过rails命令行工具生成代码后，你会感叹它的智能高效。（它甚至能做不规则英文单词单复数转换）
``` ruby
$ rails new shop
$ rails g scaffold shop name:string description:text
```

丰富的内置功能，组合起来让开发更高效, 拿数据库操作举例，默认的数据库操作方法有上百个，已经能覆盖大部分情况，一般情况下不需要手写DAO, 如下这些只是简单功能，组合起来可以更清晰和方便。比hibernate清晰简单。
``` ruby 
class User < ActiveRecord::Base
  # name, age, birth  
  has_many :posts
  validation :namge, :age, presence: true

  def self.published_posts 
    self.joins(posts).where(posts: {published: true})
  end 
end

foo = User.create(name: "foo", age: 20) #创建用户
User.all # 查找全部用户
User.first # 查找第一个用户
User.published_posts  #获取用户和用户已发表的文章
```

有其它web开发经验的朋友可根据官方教程尝试一下: [Rails Guide](http://guides.rubyonrails.org/)

### 编程原来可以这么快乐

1. 接近自然语言的简洁自由风格。
2. 丰富的gem, 好多功能已有前人做好，只需要拿来配置一下使用。 
3. 简短的语句就能完成丰富的功能。

``` ruby
user.save if user.valid?  #接近自然语言
users.each{|u| u.created_at < Date.yesterday} #通过组合，清晰的简短的完成功能表达。
```


### ruby 的开放精神

可能每个程序员都有一颗冲破束缚，追求自由的心，ruby让这种本性彻底释放
1. 你可以修改任何类，方法，包括自带的库。通常情况下我们不会考虑修改语言标准库函数，也或许认为没有必要。当你真的需要时，才能体会有和没有的区别。
2. 强大的元编程能力，让你拥有无限的魔法。

``` ruby
#修改自带库的类
class String 
  def reverse
    "aa"
  end
end

#元编程，添加不存在的方法
class User 
  
end
```


### ruby 社区成熟，gem 众多，功能强大

由于强大的元编程和动态特性，ruby的gem 功能非常强大而且可高度定制。 
1. devise
2. sidekiq
3. ....

### ruby 的挑战

1.有一定的学习曲线,安装，配置, 学习api, 一旦掌握，威力巨大。
2.其它语言的的框架通过相互借鉴和进步，大大提升了开发效率。
2.语言本身的运行效率不高, rails一类的框架，不经过调优，运行效率不高。
3.对多线程的支持不够好。

### 那么有必要学习新的语言吗？

1. 在某些场景下只能用特定的语言，比如浏览器，只能是类javascript语言。
2. 不同的编程语言就像武器，想象一下吧，你拿着大刀的时候，对方端着机枪。
3. 尝试不同的语言，你会感受不同的编程风格。
4. 会多种语言，解决问题的可选项就会越多。
5. 语言排行榜上，流行java, c 是不是学他们就够了，特定问题生产率高的恰恰是小众语言。
6. 学习小众语言没有用武之地？当你需要用的时候，你就会感谢当初的你是明智的。 
7. 那为什么是ruby?  只是我选择了ruby
   你可以选择你喜欢的动态语言。重要的是要学不同的语言。

