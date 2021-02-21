myFunction = ->
  rows = [
    {
      first: 'Mirica'
      last: 'Yancey'
      id: '4698356'
    }
    {
      first: 'Naomi'
      last: 'Draus'
      id: '34365484'
    }
    {
      first: 'Mimi'
      last: 'Aello'
      id: '3413836'
    }
    {
      first: 'Mimi'
      last: 'Yancey'
      id: '39331589'
    }
    {
      first: 'Derek'
      last: 'Hale'
      id: '11152897'
    }
    {
      first: 'Derek'
      last: 'Dottson'
      id: '9857436'
    }
  ]
  firstn = document.getElementsByName('search')[0].value

  contains = (a, obj) ->
    html = '<table>'
    i = 0
    while i < a.length
      if a[i].first.toUpperCase() == obj.toUpperCase()
        html += '<tr>'
        html += '<td>' + a[i].first + ' ' + a[i].last + '</td>'
        html += '<td>' + ' ' + a[i].id + '</td>'
        html += '<td>' + ' ' + '<button class=\'btn\'>' + 'Edit' + '</button>' + '</td' + '<br>'
        html += '<td>' + ' ' + '<button class=\'btn\'>' + 'Delete' + '</button>' + '</td'
        html += '</tr>'
        html += '<br>'
        html += '<br>'
      else if a[i].first.toUpperCase() + ' ' + a[i].last.toUpperCase() == obj.toUpperCase()
        html += '<tr>'
        html += '<td>' + a[i].first + ' ' + a[i].last + '</td>'
        html += '<td>' + ' ' + a[i].id + '</td>'
        html += '<td>' + ' ' + '<button class=\'btn\'>' + 'Edit' + '</button>' + '</td' + '<br>'
        html += '<td>' + ' ' + '<button class=\'btn\'>' + 'Delete' + '</button>' + '</td'
        html += '</tr>'
        html += '<br>'
        html += '<br>'
      else if a[i].id == obj
        html += '<tr>'
        html += '<td>' + a[i].first + ' ' + a[i].last + '</td>'
        html += '<td>' + ' ' + a[i].id + '</td>'
        html += '<td>' + ' ' + '<button class=\'btn\'>' + 'Edit' + '</button>' + '</td' + '<br>'
        html += '<td>' + ' ' + '<button class=\'btn\'>' + 'Delete' + '</button>' + '</td'
        html += '</tr>'
        html += '<br>'
        html += '<br>'
      html += '</table>'
      document.getElementById('table2').innerHTML = html
      i++
    return

  contains rows, firstn
  return
