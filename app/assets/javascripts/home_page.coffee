current_classes = [
  ' THEO-200WIC-B The Christian Tradition-Wic '
  'FLJ-101-A Beginning Japanese I '
  'CS-340-A Web Programming '
  'CS-250-B Object Oriented Programming'
  'CS-225-A Programming Languages'
  'FLS-204-A Spanish Comp and Conversation'
]
para = undefined
a = undefined
node = undefined
element = document.getElementById('cur')
# Accordion

myFunction = (id) ->
  x = document.getElementById(id)
  if x.className.indexOf('w3-show') == -1
    x.className += ' w3-show'
    x.previousElementSibling.className += ' w3-theme-d1'
  else
    x.className = x.className.replace('w3-show', '')
    x.previousElementSibling.className = x.previousElementSibling.className.replace(' w3-theme-d1', '')
  return

i = 0
while i < current_classes.length
  para = document.createElement('p')
  para.setAttribute 'id', 'fin'
  a = document.createElement('a')
  a.setAttribute 'href', '404.html'
  node = document.createTextNode(current_classes[i])
  a.appendChild node
  para.appendChild a
  element.appendChild para
  i++
new_classes = [
  'MATH-220-A Discrete Mathematics'
  'PSY-111-E Lab in Gen Experimental Psych'
  'FLS-231-B Spanish-American Civilization'
  'FLJ-102-A Beginning Japanese II'
  'CS-365-A Interactive Computer Graphics'
]
par = undefined
aa = undefined
nodee = undefined
element = document.getElementById('next')
i = 0
while i < new_classes.length
  par = document.createElement('p')
  par.setAttribute 'id', 'fin'
  aa = document.createElement('a')
  aa.setAttribute 'href', '404.html'
  nodee = document.createTextNode(new_classes[i])
  aa.appendChild nodee
  par.appendChild aa
  element.appendChild par
  i++
labels = [
  'Full Name: '
  'Student ID: '
  'Mailing Address: '
  'Mail Unit Combination: '
  'Phone Number: '
  'Email Address: '
  'Major: '
  'Meal Plan Balance: '
]
info = [
  'Admin User'
  '3569874'
  '1509 Chapel Drive, Unit 0123  Valparaiso, IN 46383-7123'
  '00 11 22'
  '000-222-3333'
  'govalpo@valpo.edu'
  'Computer Science'
  '$257.25'
]
parr = undefined
nod = undefined
element = document.getElementById('user')
i = 0
while i < labels.length
  parr = document.createElement('p')
  parr = setAttribute('id', 'gen')
  nod = document.createTextNode(labels[i] + info[i])
  parr.appendChild node
  element.appendChild parr
  i++
element2 = document.getElementById('meal')
header = document.createElement('h3')
header.setAttribute 'id', 'gen'
ab = document.createElement('a')
ab.setAttribute 'href', '404.html'
node2 = document.createTextNode(labels[8] + info[8])
ab.appendChild nod
header.appendChild ab
element2.appendChild header
document.getElementById('welcome').innerHTML = 'Welcome, ' + info[0] + '!'
