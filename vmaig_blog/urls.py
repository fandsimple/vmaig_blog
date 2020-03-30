from django.conf.urls import include, url

from django.contrib import admin
from django.conf.urls.static import static
from vmaig_blog import settings

urlpatterns = [
    url(r'^admin/', include(admin.site.urls)),
    url(r'',include('blog.urls')),
    url(r'',include('vmaig_comments.urls')),
    url(r'',include('vmaig_auth.urls')),
    url(r'mdeditor/', include('mdeditor.urls'))
]

if settings.DEBUG:
    # static files (images, css, javascript, etc.)
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)


