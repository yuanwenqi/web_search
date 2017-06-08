from django.db import models

# Create your models here.
class Records(models.Model):
	title_text = models.CharField(max_length=200)
	link_url = models.URLField(max_length=200)
	discribe_text = models.CharField(max_length=200)
    
class Question(models.Model):
    question_text = models.CharField(max_length=200)
    pub_date = models.DateTimeField('date published')


class Choice(models.Model):
    question = models.ForeignKey(Question, on_delete=models.CASCADE)
    choice_text = models.CharField(max_length=200)
    votes = models.IntegerField(default=0)

