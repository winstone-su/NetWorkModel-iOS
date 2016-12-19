# NetWorkModel-iOS
iOS网络数据解析的模型层处理

# BaseModel
网络模型的基类
通过 # - (instancetype)initWithDictionary:(NSDictionary *)dict
方法对网络数据进行封装
    #- (BOOL)isVaildData:(id)obj
    这个方法用来判断数据的有效性，减少环复杂度