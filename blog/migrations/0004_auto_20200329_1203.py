# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import mdeditor.fields


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0003_auto_20200328_0052'),
    ]

    operations = [
        migrations.AlterField(
            model_name='article',
            name='content',
            field=mdeditor.fields.MDTextField(verbose_name='正文'),
        ),
    ]
