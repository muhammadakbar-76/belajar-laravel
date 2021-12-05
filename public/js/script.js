// const title = document.querySelector(".create-posts-title");
// const slug = document.querySelector(".create-posts-slug");

// title.addEventListener("change", function(e){
//     const target = e.target.value;

//    slug.value = target.split(" ").join("-").toLocaleLowerCase();
// })

//request slug
const title = document.querySelector("#title");
const slug = document.querySelector("#slug");
const image = document.querySelector("#fileInput");
const previewImg = document.querySelector(".img-preview");

title.addEventListener("change", function(){
  fetch(`/dashboard/posts/create_slug?title=${title.value}`)
  .then(res => res.json())
  .then(data => slug.value = data.slug);
});

document.addEventListener("trix-file-accept", function(e){
  e.preventDefault();
});

image.addEventListener("change", function(){
  previewImg.style.display = "block";

  const oFReader = new FileReader();

  oFReader.readAsDataURL(image.files[0]);

  oFReader.onload = function(oFREvent){
    previewImg.src = oFREvent.target.result;
  }
});