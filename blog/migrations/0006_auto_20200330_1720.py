# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import mdeditor.fields


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0005_auto_20200329_1209'),
    ]

    operations = [
        migrations.AlterField(
            model_name='article',
            name='content',
            field=mdeditor.fields.MDTextField(verbose_name='正文'),
        ),
        migrations.AlterField(
            model_name='article',
            name='summary',
            field=mdeditor.fields.MDTextField(verbose_name='摘要'),
        ),
    ]
