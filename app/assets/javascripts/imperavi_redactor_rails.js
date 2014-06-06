$(function () {
  $('.redactor').redactor({
    clipboardUploadUrl: '/redactor_images/create_from_clipboard',
    imageUpload: '/redactor_images',
    fileUpload: '/redactor_files',
    imageGetJson: '/redactor_images',
    fileGetJson: '/redactor_files'
  });
});