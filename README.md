# Домашнее задание №1

# Команды

[Список](src/server_commands.sh) команд, выполненных на сервере:

![image](https://user-images.githubusercontent.com/86663451/139123423-a3deb4ca-05da-49fd-a1e8-c6b97f101505.png)

# Отчёты MultiQC:

Исходные чтения:

![image](https://user-images.githubusercontent.com/86663451/138980926-76fde27e-1fc8-4b43-a8bc-c08b4b43f71b.png)

![image](https://user-images.githubusercontent.com/86663451/138980942-6e1ea5b0-34b7-4904-bda8-dbb83f755e63.png)

Подрезанные paired-end чтения:

![image](https://user-images.githubusercontent.com/86663451/138981992-73bd41ad-cbf9-4e5d-b601-f239694a048d.png)

![image](https://user-images.githubusercontent.com/86663451/138981998-806ebef8-1e6d-4703-b4aa-8980584a1681.png)

Подрезанные mate-pairs чтения:

![image](https://user-images.githubusercontent.com/86663451/138982223-e5459054-6bb9-4d71-b36c-fc37e9160cc7.png)

![image](https://user-images.githubusercontent.com/86663451/138982246-6542b8bc-feab-4545-a011-76c090bd8269.png)

# Анализ полученных результатов:

[Код](src/Hometask1_bioinformatics.ipynb)

Ссылка на colab: https://colab.research.google.com/drive/1V3Dd2KxFLFALSGJNnkYzkljB869t9gV1?usp=sharing

Анализ собранных контигов:

![image](https://user-images.githubusercontent.com/86663451/138983275-5f5d09fe-961c-458d-97ec-cb458c633a4d.png)

Анализ скаффолдов:

![image](https://user-images.githubusercontent.com/86663451/138983290-6357a519-e728-4aac-b20e-076ba89b205d.png)

Анализ самого длинного скаффолда после удаления пропусков:

![image](https://user-images.githubusercontent.com/86663451/138983982-54a4c3b3-d169-41c3-8bb6-01af28428685.png)

# Дополнительное задание

Я взял половину от изначального количества ридов, то есть 2.5 миллиона и 750 тысяч paired-end и mate-pairs чтений соответственно. Использовав тот же код, результаты получились следующие:

Количество полученных контигов уменьшилось в ~2.5 раза, их общая длина уменьшилась не настолько сильно
![image](https://user-images.githubusercontent.com/86663451/139126774-f4bec919-449c-433a-8c59-a63efe885ae2.png)

Также уменьшилось количество скаффолдов, их общая длина, а также количество пропусков и их суммарная длина в самом длинном скаффолде:
![image](https://user-images.githubusercontent.com/86663451/139127085-ac51edd4-a78f-450f-89cf-856aa06be02c.png)

Однако platanus gap_close справился хуже с устранением пропусков: и количество, и длина гэпов почти в 2 раза больше:
![image](https://user-images.githubusercontent.com/86663451/139127251-f89c6691-d375-480c-8fe9-ff12adfe5a06.png)
