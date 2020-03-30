#coding:utf-8
from django.contrib import admin
from blog.models import Article,Category,Carousel,Nav,Column,News
import markdown

admin.site.site_header = '樊樊家园后花园'
admin.site.site_title = '樊樊家园后台管理系统'

class CategoryAdmin(admin.ModelAdmin):
    search_fields = ('name',)
    list_filter = ('status','create_time')
    list_display = ('name','parent','rank','status')
    fields = ('name','parent','rank','status')



class ArticleAdmin(admin.ModelAdmin):
    search_fields = ('title','summary')
    list_filter = ('status','category','is_top','create_time','update_time','is_top')
    list_display = ('title','category','author','status','is_top','update_time')
    fieldsets = (
        (u'基本信息', {
            'fields': ('title','en_title','img','category','tags','author','is_top','rank','status')
            }),
        (u'文章内容', {
            # 'fields': ('content',)
            'fields': ('content',)
            }),
        (u'文章摘要', {
            'fields': ('summary',) 
            }),
        (u'时间', {
            'fields': ('pub_time',) 
            }),
    )

    # def save_model(self, request, obj, form, change):
    #     # 将markdown文本保存成为html文本
    #     obj.content = markdown.markdown(obj.content)
    #     obj.summary = markdown.markdown(obj.summary)
    #     obj.save()

    # def change_view(self, request, object_id, form_url='', extra_context=None):
    #     import pdb
    #     pdb.set_trace()


    # def content_to_markdown(self):
    #     return 1111



class NewsAdmin(admin.ModelAdmin):
    search_fields = ('title','summary')
    list_filter = ('news_from','create_time')
    list_display = ('title','news_from','url','create_time')
    fields = ('title','news_from','url','summary','pub_time')


class NavAdmin(admin.ModelAdmin):
    search_fields = ('name',)
    list_display = ('name','url','status','create_time')
    list_filter = ('status','create_time')
    fields = ('name','url','status')


class ColumnAdmin(admin.ModelAdmin):
    search_fields = ('name',)
    list_display = ('name','status','create_time')
    list_filter = ('status','create_time')
    fields = ('name','status','article','summary')
    filter_horizontal = ('article',)


class CarouselAdmin(admin.ModelAdmin):
    search_fields = ('title',)
    list_display = ('title','article','img','create_time')
    list_filter = ('create_time',)
    fields = ('title','article','img','summary')



admin.site.register(Category,CategoryAdmin)
admin.site.register(Article,ArticleAdmin)
admin.site.register(News,NewsAdmin)
admin.site.register(Nav,NavAdmin)
admin.site.register(Column,ColumnAdmin)
admin.site.register(Carousel,CarouselAdmin)
