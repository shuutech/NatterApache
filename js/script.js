const url='https://pokeapi.co/api/v2/pokemon/'

const firstPromise = fetch(url)

const secondPromise = firstPromise.then(function(response){
	const json= response.json();
	return json;
})

const finalPromise = secondPromise.then(function(pokemonData){
	const pokemonArr = pokemonData.results;
	pokemonArr.forEach(function(pokemon, index){
		displayPokemon(pokemon, index);
		//console.log(pokemon.name);
	})
	//console.log(data.results[0].name)
})

function displayPokemon(pokemon, index){
	const list = document.querySelector('.pokemon-list')
	index = index + 1; 
	const card = `
	<div class = "card">
	<h2>${index}</h2>
	<h3>${pokemon.name}</h3>
	</div>
	`
	list.insertAdjacentHTML('beforeend',card)
}
console.log(finalPromise)
