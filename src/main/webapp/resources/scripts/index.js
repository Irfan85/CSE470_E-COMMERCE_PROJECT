var toastTrigger = document.getElementById('addToCartBtn')
var toastMessage = document.getElementById('addedToCartToast')
if (toastTrigger) {
  toastTrigger.addEventListener('click', function () {
    var toast = new bootstrap.Toast(toastMessage)

    toast.show()
  })
}
